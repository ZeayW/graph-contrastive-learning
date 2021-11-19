import os
import networkx as nx
from networkx import topological_sort
import torch as th
import pickle
import torch.nn as nn
from random import shuffle
class EVCNN(nn.Module):
    def __init__(self, in_dim, out_dim=2):
        super().__init__()
        self.bn = nn.BatchNorm1d(in_dim)
        self.cnn = nn.Sequential(
            nn.Conv1d(1, 64, 8), nn.ReLU(), nn.MaxPool1d(2), nn.Dropout(0.25),
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
        x = x.unsqueeze(1)
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

def load_data(path):
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

            if g.number_of_nodes() < 120:
                remove_train += 1
                continue

            feature = build_feature(g, 40, 3).unsqueeze(0)
            train_data.append((label, feature))
            print(i,feature.shape,feature, '\n')

        for i, (label, g, _, _) in enumerate(val_dataset):

            if g.number_of_nodes() < 120:
                remove_val += 1
                continue

            feature = build_feature(g, 40, 3).unsqueeze(0)
            val_data.append((label, feature))
            print(i, feature.shape,feature, '\n')

        print(remove_train, remove_val)
        os.makedirs('../data/evcnn/',exist_ok=True)
        with open('../data/evcnn/data.pkl', 'wb') as f:
            pickle.dump((train_data, val_data), f)

    return train_data,val_data



def train():
    train_data,val_data = load_data('../data/evcnn/data.pkl')
    device = th.device("cuda"  if th.cuda.is_available() else "cpu")
    #shuffle(train_dataset)
    model =EVCNN(16)
    for epoch in range(100):
        shuffle(train_data)
        labels = th.tensor([], dtype=th.long).to(device)
        global_embeddings = None
        for i, (label,feature)  in enumerate(train_data):
            label = model(feature)


train()