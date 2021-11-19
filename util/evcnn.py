import os
import networkx as nx
from networkx import topological_sort
import torch as th
import pickle

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

with open(os.path.join('../data/global_new', 'train_data.pkl'), 'rb') as f:
    train_graphs=pickle.load(f)
with open(os.path.join('../data/global_new', 'val_data.pkl'), 'rb') as f:
    val_graphs=pickle.load(f)

print(train_graphs[0][1])
feature = build_feature(train_graphs[0][1],40,3)
print(feature.shape,feature)