import dgl
import pickle
from matplotlib import pyplot as plt
import networkx as nx
import torch as th
import numpy as np
from networkx.algorithms.distance_measures import center
import os
datapath = 'multiplexer16'

for f in os.listdir(datapath):
    with open(os.path.join(datapath,f),'rb') as f:
        g = pickle.load(f)

    print(g)
    #nx.draw_shell(ng, with_labels=True, font_weight='bold')  # 节点按序排列

    #g.add_edges_from([(0,4),(1,4),(2,5),(3,5),(4,6),(5,6),(6,7),(7,9),(8,9),(6,8)])
    #g = dgl.DGLGraph((th.tensor([0,1,2,3,4,5,6,7,8,6]),th.tensor([4,4,5,5,6,6,7,9,9,8])))
    ng = nx.Graph()
    e1,e2 = g.edges()
    for i in range(g.number_of_edges()):
        ng.add_edge(e1[i].item(),e2[i].item())

    #ng = g.to_networkx()
    #nx.draw_shell(ng, with_labels=True, font_weight='bold')
    #plt.show()
    c= center(ng)
    len = nx.shortest_path_length(ng,c[0])
    print(len.values())
    print(max(len.values()))