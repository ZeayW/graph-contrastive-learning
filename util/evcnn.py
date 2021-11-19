import sys
sys.path.append('../codes')
from options import get_options
import os
import networkx as nx
from networkx import topological_sort
import torch as th
import pickle
import torch.nn as nn
from random import shuffle

class Dataset(th.utils.data.Dataset):
    def __init__(self, data):
        # print("init dataset, len=", len(data))
        # print(torch.max(data))
        self.data = data

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        #print(self.data[idx][1].shape)
        return (self.data[idx][0], self.data[idx][1])

class EVCNN(nn.Module):
    def __init__(self, in_dim, out_dim=2):
        super().__init__()
        self.bn = nn.BatchNorm1d(in_dim)
        self.cnn = nn.Sequential(
            nn.Conv1d(120, 64, 8), nn.ReLU(), nn.MaxPool1d(2), nn.Dropout(0.25),
        )
        self.fc = nn.Sequential(
            nn.Linear(int(64 * (in_dim - 8) / 2), 32),
            nn.ReLU(),
            nn.Dropout(0.5),
            nn.Linear(32, 4),
        )

    def forward(self, x):
        # x = self.bn(x)
        # print(x)
        x = self.cnn(x)
        # print(x)
        x = x.view(x.size(0), -1)
        # print(x.size())
        x = self.fc(x)
        # print(x)
        # input()
        return x

def top_k(evs,k):
    evs2 = th.clone(evs)
    evs2[evs2>0]=1
    count = th.sum(evs2,dim=1)
    _,order = th.sort(count)
    topk = reversed(order)[:k]
    return evs[topk]

def construct_ev(graph):
    evs = None
    max_t= 0
    nxg = graph.to_networkx()
    for i in  range(graph.number_of_nodes()):
        ev = th.clone(graph.ndata["ntype"][i]).detach()
        l = nx.single_source_shortest_path_length(nxg, i, cutoff=2)
        for n, d in l.items():
            ev += graph.ndata["ntype"][n] * (1 if d == 1 else 0.5)
        l = nx.single_source_shortest_path_length(
            nxg.reverse(copy=False), i, cutoff=2
        )
        for n, d in l.items():
            ev += graph.ndata["ntype"][n] * (1 if d == 1 else 0.5)
        max_t = max(max_t, th.max(ev).item())
        ev = th.clamp(ev, 0, 64).unsqueeze(0)
        if evs is None:
            evs = ev
        else:
            evs = th.cat((evs,ev),dim=0)
    return evs
def build_feature(graph,p,k):
    evs = construct_ev(graph)
    feature = None
    order = list(topological_sort(graph.to_networkx()))
    #print(order)
    group_size = int(len(order)/p)
    groups = []
    for i in range(p):
        if i ==p-1:
            group = order[i*group_size:]
        else:
            group = order[i*group_size:(i+1)*group_size]
        group_evs = evs[group]
        ktop_evs = top_k(group_evs,k)
        if feature is None:
            feature = ktop_evs
        else:
            feature = th.cat((feature,ktop_evs))

    return feature

def load_data(path,p,k):
    if os.path.exists(path):
        with open(path,'rb') as f:
            train_data,val_data = pickle.load(f)
    else:
        with open(os.path.join('../data/global_new', 'train_data.pkl'), 'rb') as f:
            train_dataset = pickle.load(f)
        with open(os.path.join('../data/global_new', 'val_data.pkl'), 'rb') as f:
            val_dataset = pickle.load(f)

        train_data = []
        val_data = []
        train_labels =  th.tensor([],dtype=th.long)
        val_labels = th.tensor([],dtype=th.long)
        remove_train = 0
        remove_val = 0
        for i,(label, g, _, _) in enumerate(train_dataset):

            if g.number_of_nodes() < p*k:
                remove_train += 1
                continue

            feature = build_feature(g, p, k)
            train_data.append((label, feature))
            print(i,feature.shape,feature, '\n')

        for i, (label, g, _, _) in enumerate(val_dataset):

            if g.number_of_nodes() < p*k:
                remove_val += 1
                continue

            feature = build_feature(g, p, k)
            val_data.append((label, feature))
            print(i, feature.shape,feature, '\n')

        print(remove_train, remove_val)
        os.makedirs('../data/evcnn/',exist_ok=True)
        with open(path, 'wb') as f:
            pickle.dump((train_data, val_data), f)

    return train_data,val_data

def validate(val_dataloader, device, model,loss, options):
    total_num, total_loss, correct, fn, fp, tn, tp = 0, 0.0, 0, 0, 0, 0, 0

    with th.no_grad():
        for i, (labels,features)  in enumerate(val_dataloader):
            features = features.to(device)
            labels = labels.to(device)
            label_hats = model(features)
            predict_labels = th.argmax(nn.functional.softmax(label_hats, 1), dim=1)
        # print('ground-truth labels:',labels.shape,labels)
        # print('predict labels:',predict_labels.shape,predict_labels)
            val_loss = loss(label_hats, labels)
        #print('val loss:', val_loss.item())
            total_num += len(labels)

            correct += (
                    predict_labels == labels
            ).sum().item()
            #errors = th.tensor(range(0, len(predict_labels)))[predict_labels != labels]
            #print('errors:', errors)
            #print(correct,total_num)
            val_acc = correct / total_num



    return [val_loss, val_acc]

def train():
    options = get_options()
    p,k = 40,2
    train_data,val_data = load_data('../data/evcnn/data2.pkl',p,k)
    device = th.device("cuda"  if th.cuda.is_available() else "cpu")
    #shuffle(train_dataset)

    if os.path.exists(options.model_saving_dir):
        with open(os.path.join(options.model_saving_dir,'model.pkl'),'rb') as f:
            options,model = pickle.load(f)
    else:
        os.makedirs(options.model_saving_dir, exist_ok=True)
        model =EVCNN(16)
        with open(os.path.join(options.model_saving_dir,'model.pkl'),'wb') as f:
            pickle.dump((options,model),f)
        with open(os.path.join(options.model_saving_dir, 'res.txt'),'wb') as f:
            pass
    model.to(device)

    Loss = nn.CrossEntropyLoss()
    optim = th.optim.Adam(
        model.parameters(),
        options.learning_rate, weight_decay=options.weight_decay
    )
    model.train()

    max_acc = 0
    # for lb,ft in train_data:
    #     print(ft.shape)
    # exit()
    shuffle(train_data)
    train_data = train_data[:int(len(val_data)*options.train_percent)]
    print('num train:',len(train_data))
    print('num_val:',len(val_data))
    train_dataset = Dataset(train_data)
    train_dataloader = th.utils.data.DataLoader(train_dataset, batch_size=options.batch_size)
    val_dataset = Dataset(val_data)
    val_dataloader = th.utils.data.DataLoader(val_dataset, batch_size=len(val_dataset))
    print('Start training ')
    for epoch in range(options.num_epoch):
        total_num, total_loss, correct, fn, fp, tn, tp = 0, 0.0, 0, 0, 0, 0, 0
        shuffle(train_data)
        labels = th.tensor([], dtype=th.long).to(device)
        label_hats = None
        for i, (labels,features)  in enumerate(train_dataloader):
            #print(labels.shape,features.shape)
            #labels = th.cat((labels, th.tensor([label], dtype=th.long).to(device)))
            features = features.to(device)
            labels = labels.to(device)
            label_hats = model(features)
            #print(label_hats.shape)
            #print(labels,label_hats)
            # if label_hats is None:
            #     label_hats = label_hat.unsqueeze(0)
            # else:
            #     label_hats = th.cat((label_hats,label_hat),dim=0)

            predict_labels = th.argmax(nn.functional.softmax(label_hats, 1), dim=1)
            # print('ground-truth labels:',labels.shape,labels)
            # print('predict labels:',predict_labels.shape,predict_labels)
            train_loss = Loss(label_hats, labels)
            #print('loss:', train_loss.item())
            total_num += len(labels)
            total_loss += train_loss.item() * len(labels)
            correct += (
                    predict_labels == labels
            ).sum().item()
            optim.zero_grad()
            train_loss.backward()
            # print(model.GCN1.layers[0].attn_n.grad)
            optim.step()

        Train_loss = total_loss / total_num
        Train_acc = correct / len(train_data)
        # print("epoch[{:d}]".format(epoch))
        # print("  train:")
        # # print("\ttp:", tp, " fp:", fp, " fn:", fn, " tn:", tn, " precision:", round(Train_precision,3))
        # print("\tloss:{:.8f}, acc:{:.3f}, ".format(Train_loss, Train_acc))
        val_loss, val_acc = validate(val_dataloader, device, model,Loss, options)
        #if not os.path.exists(os.path.join(options.model_saving_dir, 'res.txt'))
        with open(os.path.join(options.model_saving_dir, 'res.txt'), 'a') as f:
            f.write(str(round(Train_loss, 8)) + " " + str(round(Train_acc, 3))  + "\n")
            f.write(str(round(val_loss.item(), 3)) + " " + str(round(val_acc, 3)) + "\n")
            f.write('\n')

        judgement = val_acc > max_acc
        #judgement = True
        if judgement:
           print("epoch {}".format(epoch))
           print("\tval loss:{:.3f}, acc:{:.3f}".format(val_loss, val_acc))
           max_acc = val_acc
           print("Saving model.... ", os.path.join(options.model_saving_dir))
           if os.path.exists(options.model_saving_dir) is False:
              os.makedirs(options.model_saving_dir)
           with open(os.path.join(options.model_saving_dir, 'model.pkl'), 'wb') as f:
              parameters = options
              pickle.dump((parameters, model), f)
           print("Model successfully saved")


if __name__ == "__main__":
    seed = 1234
    # th.set_deterministic(True)
    th.manual_seed(seed)
    th.cuda.manual_seed(seed)
    train()