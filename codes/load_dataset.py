from options import get_options
from random import shuffle
import pickle
import torch as th

def  load_dataset(g,options):
    # print(save_file)

    print("total number of nodes: ", g.num_nodes())

    ratio = 1

    nodes = th.tensor(range(g.num_nodes()))
    if options.label == 'in':
        labels = g.ndata['label_i']
    elif options.label == 'out':
        labels = g.ndata['label_o']


    else:
        print("wrong label type")
        return

    print("num of labels: ",len(th.unique(labels)))
    mask_pos = (labels != 0).squeeze(1)

    mask_neg = (labels == 0).squeeze(1)
    pos_nodes = nodes[mask_pos].numpy().tolist()
    neg_nodes = nodes[mask_neg].numpy().tolist()
    shuffle(pos_nodes)
    shuffle(neg_nodes)
    pos_size = len(pos_nodes)
    neg_size = len(neg_nodes)

    ratio = float(neg_size) / float(pos_size)
    print("ratio=", ratio)

    pos_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    neg_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    pos_types = g.ndata['ntype'][pos_nodes]
    neg_types = g.ndata['ntype'][neg_nodes]
    pos_types = th.argmax(pos_types, dim=1)
    neg_types = th.argmax(neg_types, dim=1)
    type_count(pos_types, pos_count)
    type_count(neg_types, neg_count)

    print("pos count:", pos_count)
    print("neg count:", neg_count)
    rates = cal_ratios(neg_count, pos_count)
    print(rates)

def type_count(ntypes,count):
    for tp in ntypes:
        tp = tp.item()
        count[tp] +=1

def cal_ratios(count1,count2):
    ratios = []
    for i in range(len(count1)):
        if count2[i] == 0:
            ratios.append(-1)
        else:
            ratio = count1[i] / count2[i]
            ratios.append(round(ratio,2))
    return ratios

def main():
    options = get_options()
    train_data_file = 'data/sub/boom2.pkl'
    val_data_file = 'data/sub/rocket2.pkl'
    with open(train_data_file, 'rb') as f:
        train_g = pickle.load(f)
    with open(val_data_file, 'rb') as f:
        val_g = pickle.load(f)
    print("loading train data")
    load_dataset(train_g,options)
    print("load val data")
    load_dataset(val_g,options)


if __name__ == '__main__':
    main()