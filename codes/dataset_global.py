import sys

sys.path.append("..")
import util.structural as structural
import util.verilog as verilog

import dgl
from dgl.data import DGLDataset
import networkx as nx
import torch as th
import numpy as np
import os
import random
from util.single_verilog_parser import *
from options import get_options
from torch.nn.parameter import Parameter
#from codes.generate_data import *
import pickle

def parse_single_file(nodes,edges):
    # nodes: list of (node, {"type": type}) here node is a str ,like 'n123' or '1'b1'
    # note that here node type does not include buf /not
    label2id = {"1'b0": 0, "1'b1": 1, 'DFF': 2, 'DFFSSR': 3, 'DFFAS': 4, 'NAND': 5, 'AND': 6,
                'OR': 7, 'DELLN': 8, 'INV': 9, 'NOR': 10, 'XOR': 11, 'MUX': 12, 'XNOR': 13,
                'MAJ': 14, 'PI': 15}
    #print(nodes)
    #print(edges)
    nid = 0
    node2id = {}
    id2node = {}
    POs = []

    ntype = th.zeros((len(nodes), len(label2id.keys())), dtype=th.float)
    for n in nodes:
        if node2id.get(n[0]) is None:
            node2id[n[0]] = nid
            id2node[nid] = n[0]
            type = n[1]["type"]
            if re.search("\d", type) and type not in ["1'b0","1'b1"]:
                type = type[: re.search("\d", type).start()]
            #print(type)
            ntype[nid][label2id[type]] = 1
            if n[1]["is_output"]:
                POs.append(nid)
            nid += 1

    src_nodes = []
    dst_nodes = []
    for src, dst, edict in edges:
        src_nodes.append(node2id[src])
        dst_nodes.append(node2id[dst])
    #print(src_nodes,dst_nodes)
    graph = dgl.graph(
        (th.tensor(src_nodes), th.tensor(dst_nodes)), num_nodes=len(node2id)
    )
    graph.ndata["ntype"] = ntype
    PIs = th.tensor(range(graph.number_of_nodes()))[th.argmax(ntype,dim=1).squeeze(-1)==15]\
        .numpy().tolist()
    print('total_nodes:',graph.number_of_nodes(),'num PIs:',len(PIs),'num POs:',len(POs))
    #if len(PIs)!=get_options().num_input:
    #print(PIs,output_nid)
    #assert len(PIs)==get_options().num_input
    #print(graph.nodes())
    depth = cal_depth(graph,PIs,POs)
    return graph,POs,depth

    
class Dataset_global(DGLDataset):
    def __init__(self,datapaths,labels):
        self.datapaths = datapaths
        self.labels = labels
        #self.split = split
        super(Dataset_global, self).__init__(name="dac")
        # self.alpha = Parameter(th.tensor([1]))

    def process(self):
        type2label = {"ling_adder":1,"hybrid_adder":2, "cond_sum_adder":3, "sklansky_adder":4, "brent_kung_adder":5, "bounded_fanout_adder":6,"unknown":7}
        self.batch_graphs = []
        self.graphs = []
        self.len = 0

        max_depth = 0
        options = get_options()
        start_nid = 0
        #self.netlists = []

        # with open(os.path.join(self.datapath,'split{}.pkl'.format(self.split)),'rb') as f:
        #     filelist = pickle.load(f)
        # print(len(filelist))
        #print('file list{} start with {}'.format(self.split,filelist[0]))
        #self.num_graph = 0
        for i,datapath in enumerate(self.datapaths):
            for folder in os.listdir(datapath):
                folder_path = os.path.join(datapath,folder)
                if os.path.isdir(folder_path):
                    if 'implementation' not in os.listdir(folder_path):
                        continue
                    imple_folder = os.path.join(folder_path,'implementation')

                    for vf in os.listdir(imple_folder):
                        if not vf.endswith('.v') or 'hier' in vf:
                            continue
                        #PO = []
                        print('processing {}'.format(vf))
                       # print('\ngenerate positive samples for {}'.format(vf))
                        #value = vf.split('_')[2].split('.')[0][1:]
                        parser = DcParser('test')
                        #print(os.path.join(datapath, vf))
                        nodes, edges = parser.parse(os.path.join(imple_folder, vf))
                        if len(nodes) == 0:
                            print('empty...')
                            continue
                        graph, POs, depth = parse_single_file(nodes, edges)
                        #self.num_graph += 1
                        self.graphs.append((self.labels[i],graph,POs,depth))
            for label,graph,POs,depth in self.graphs:
                print(label,graph,len(POs),depth)
            exit()
        #self.labels = th.zeros((len(self.graphs), 1), dtype=th.long)

        #self.depth = max_depth
        #self.batch_graph = dgl.batch(self.graphs)


    def __len__(self):
        return self.len


def change_order(nids,width):
    res = []
    if len(nids) % width !=0 :
        print('num of IO is wrong')
        assert False
    num_modules = int(len(nids) / width)
    for bit_index in range(width):
        for module_index in range(num_modules):
            res.append(nids[width*module_index+bit_index])
    return res
def cal_depth(g,PIs,POs):
    g = g.to_networkx()
    depth = 0
    dsts = POs
    for src in PIs:
        #print('src',id2nodes[src])
        max_path_length = 0
        #for dst in PIs[2*i:2*i+2]:
        path = None
        for dst in dsts:
            if nx.has_path(g, src, dst):
                for p in nx.all_simple_paths(g, src, dst):
                    if len(p) > max_path_length:
                        max_path_length = len(p)
                        path = p
        #print('src:{},dst:{},path:{}'.format(src,dst,path))
        depth = max(depth,max_path_length-1)

    return depth


if __name__ == "__main__":
    random.seed(726)
    datapaths = ["../dc/sub/implementation/test/"]

    th.multiprocessing.set_sharing_strategy('file_system')
    # print(dataset_not_edge.Dataset_n)
    dataset = Dataset_sub("adder", 32,datapaths, None)

    # graph = parse_single_file('../util1/adder4_d0.00_auto_adder.v')
    # print(graph)
