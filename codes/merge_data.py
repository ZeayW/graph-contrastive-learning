import pickle
import os
import sys
import  dgl
num_input = sys.argv[1]
num_split = sys.argv[2]

datapath = '../data/gcl_new/i{}/'.format(num_input)

graphs = []
res_POs = {}
start_nid = 0
for i in range(int(num_split)):
    with open(os.path.join(datapath,'{}.pkl'.format(i+1)), 'rb') as f:
        graph, POs, depth = pickle.load(f)
    start_nid += graph.number_of_nodes()
    for node,dp in POs.items():
        res_POs[node+start_nid] = dp
    graphs.append(graph)
    print('split{}, num_nodes:{}, num_pos:{}'.format(i,graph.number_of_nodes(),len(POs)))

batch_graph = dgl.batch(graphs)

with open(os.path.join(datapath,'merge.pkl'),'wb') as f:
    pickle.dump((batch_graph,res_POs,depth),f)



