import pickle
import os
import sys
import  dgl
num_input = sys.argv[1]
num_split = sys.argv[2]

datapath = '../data/gcl_new/i{}/'.format(num_input)

graphs = []
res_POs = {}
original_nids, aug_nids= [],([],[],[])
orignal_graphs,aug_graphs = [],([],[],[])
original_depth = 0
depths = [0,0,0]
start_nid = 0
for k in range(int(num_split)):
    with open(os.path.join(datapath,'{}.pkl'.format(k+1)), 'rb') as f:
        graph, POs, depth = pickle.load(f)
    graphs = dgl.unbatch(graph)
    PO_nids = list(POs.keys())
    for i in range(0, len(POs), 7):
        original_nids.append(PO_nids[i]+start_nid)
        original_depth = max(original_depth, POs[PO_nids[i]])
        orignal_graphs.append(graphs[i])
        for j in range(3):
            depths[j] = max(depths[j], POs[PO_nids[i + 1 + 2 * j]])
            depths[j] = max(depths[j], POs[PO_nids[i + 2 + 2 * j]])
            aug_nids[j].append(PO_nids[i + 1 + 2 * j]+start_nid)
            aug_nids[j].append(PO_nids[i + 2 + 2 * j]+start_nid)
            aug_graphs[j].append(graphs[i + 1 + 2 * j])
            aug_graphs[j].append(graphs[i + 2 + 2 * j])

    start_nid += graph.number_of_nodes()

    print('split{}, num_nodes:{}, num_pos:{}'.format(k,graph.number_of_nodes(),len(POs)))

with open(os.path.join(datapath, 'origin.pkl'.format(num_input)), 'wb') as f:
    pickle.dump((dgl.batch(orignal_graphs), original_nids, original_depth), f)

for i in range(3):
    batch_graph = dgl.batch(aug_graphs[i])
    aug_POs = aug_nids[i]
    with open(os.path.join(datapath, 'aug{}.pkl'.format(i + 1)), 'wb') as f:
        pickle.dump((batch_graph, aug_POs, depths[i]), f)
    print('aug{}, depth:{},num_nodes:{}, num_pos:{}'.format(i, depths[i], batch_graph.number_of_nodes(), len(aug_POs)))




