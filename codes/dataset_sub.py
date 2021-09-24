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



def parse_single_file(parser,filename,start_nid):
    start_nid = 0
    # nodes: list of (node, {"type": type}) here node is a str ,like 'n123' or '1'b1'
    # note that here node type does not include buf /not
    # label2id = {
    #     "1'b0": 0,
    #     "1'b1": 1,
    #     'AND': 2,
    #     'DFF': 3,
    #     'DFFSSR': 4,
    #     'DFFAS': 5,
    #     'AO': 6,
    #     'INV': 7,
    #     'OA': 8,
    #     'AOI': 9,
    #     'NAND': 10,
    #     'OAI': 11,
    #     'OR': 12,
    #     'NOR': 13,
    #     'IBUFF': 14,
    #     'DELLN': 15,
    #     'MUX': 16,
    #     'XOR': 17,
    #     'XNOR': 18,
    #     'NBUFF': 19,
    #     'MAJ': 20,
    #     'PI': 21,
    # }
    label2id = {"1'b0": 0, "1'b1": 1, 'DFF': 2, 'DFFSSR': 3, 'DFFAS': 4, 'NBUFF': 5, 'AND': 6,
                'OR': 7, 'DELLN': 8, 'INV': 9, 'XOR': 10, 'MUX': 11, 'MAJ': 12, 'PI': 13}
    print(filename)
    nodes, edges = parser.parse(filename)

    #print(nodes)
    # nodes,edges = parser.remove_div(nodes,edges)
    # print(len(nodes))
    #print("num_nodes:",len(nodes))
    # print(nodes)
    #print("start_nid:",start_nid)
    PIs,POs = [],[]
    nid = 0
    node2id = {}
    id2node = {}
    pis = []
    for n in nodes:
        # if n[1].get('is_input',False):
        #     pis.append(n[0])
        #     continue
        if n[1].get('type',None) is None:
            continue
        if node2id.get(n[0]) is None:
            node2id[n[0]] = nid
            id2node[nid] = n[0]
            nid += 1
    #print("num_nodes:{}".format(len(node2id)))
    # POs = []
    # PIs =[]
    is_input = th.zeros((len(node2id), 1), dtype=th.long)
    is_output = th.zeros((len(node2id), 1), dtype=th.long)
    position = th.zeros((len(node2id), 1), dtype=th.long)

    for n in nodes:
        # if n[1].get('is_input',False):
        #     continue
        if n[1].get('type',None) is None:
            continue
        nid = node2id[n[0]]
        port = n[0][:str.find(n[0],'[')]
        # print(nid)
        is_input[nid][0] = n[1].get("is_input",False)
        is_output[nid][0] = n[1].get("is_output",False)
        if is_output[nid][0] :
            position[nid] = n[1]['position'][1]
            print(n[0],nid,id2node[nid])
            POs.append(nid+start_nid)
        if is_input[nid][0] :
            position[nid] = n[1]['position'][1]
            PIs.append(nid+start_nid)
    ntype = th.zeros((len(node2id), len(label2id.keys())), dtype=th.float)
    for n in nodes:
        # if n[1].get('is_input',False):
        #     continue
        if n[1].get('type',None) is None:
            continue
        nid = node2id[n[0]]
        ntype[nid][label2id[n[1]["type"]]] = 1
    src_nodes = []
    dst_nodes = []
    is_reverted = []
    for pi in PIs:
        print(id2node[pi])
    for src, dst, edict in edges:
        # if src in pis:
        #     continue
        src_nodes.append(node2id[src])
        dst_nodes.append(node2id[dst])

    graph = dgl.graph(
        (th.tensor(src_nodes), th.tensor(dst_nodes)), num_nodes=len(node2id)
    )

    graph.ndata["ntype"] = ntype

    graph.ndata["label_i"] = is_input
    graph.ndata["label_o"] = is_output
    graph.ndata['position'] = position
    graph.ndata['depth'] = th.zeros((len(node2id), 1), dtype=th.long)
    depth = cal_depth1(graph,id2node,nodes,start_nid,PIs,POs)

    return graph,PIs,POs,depth

    
class Dataset_sub(DGLDataset):
    def __init__(self,top_module,width,data_paths,label2id):
        self.label2id =label2id
        self.data_paths = data_paths
        self.width =width
        super(Dataset_sub, self).__init__(name="dac")
        # self.alpha = Parameter(th.tensor([1]))

    def process(self):
        type2label = {"ling_adder":1,"hybrid_adder":2, "cond_sum_adder":3, "sklansky_adder":4, "brent_kung_adder":5, "bounded_fanout_adder":6,"unknown":7}
        self.batch_graphs = []
        self.graphs = []
        self.len = 0
        max_depth = 0
        self.num_aug = 0
        parser = DcParser("Rocket", hier_keywords=["add", "inc"], adder_keywords=['add_x', 'alu_DP_OP', 'div_DP_OP'],
                          hadd_type="xor")
        for path in self.data_paths:
            files = os.listdir(path)
            random.shuffle(files)
            exclude_files = []
            start_nid = 0
            all_PIs, all_POs = [],[]
            for file in files:
                if file.endswith("v") and not file.startswith('hier') and not file.split('.')[0].endswith('d10') \
                        and file.find('auto')==-1:
                    self.num_aug += 1
                    #module_name = file.split('.')[1][3:]
                    print("Processing file {}".format(file))
                    self.len += 1
                    graph,PIs,POs,depth = parse_single_file(parser,os.path.join(path , file),start_nid)
                    ng = graph.to_networkx()

                    max_depth = max(max_depth,depth)
                    #all_PIs.extend(PIs)
                    all_POs.extend(POs)
                    start_nid += graph.number_of_nodes()
                    #print(POs.values(), depth)
                    origin_pos = []
                    for po in POs:
                        origin_pos.append(po-start_nid)
                    print('nodes:{},edges:{},PIs:{},POs:{},depth:{}'.format(graph.number_of_nodes(),graph.number_of_edges(),len(PIs),len(POs),depth))
                    #print('position:', graph.ndata['position'][PIs].squeeze(1))
                    print('position:', graph.ndata['position'][origin_pos].squeeze(1), '\ndepth:',
                          graph.ndata['depth'][origin_pos].squeeze(1))
                    #label_i = graph.ndata['label_i']
                    #label_o = graph.ndata['label_o']
                    #print(graph,len(label_i[label_i==1]),len(label_o[label_o==1]))
                    self.graphs.append(graph)

        #all_PIs = change_order(all_PIs,self.width*2)
        all_POs = change_order(all_POs,self.width)
        self.depth = max_depth
        self.batch_graph = dgl.batch(self.graphs)
        self.PIs = all_PIs
        self.POs = all_POs
        print('position:',self.batch_graph.ndata['position'][all_POs].squeeze(1), '\ndepth:',self.batch_graph.ndata['depth'][all_POs].squeeze(1))
        #print(all_PIs, '\n', self.batch_graph.ndata['position'][all_PIs].squeeze(1), '\n',
        #      self.batch_graph.ndata['depth'][all_PIs].squeeze(1))
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
def cal_depth1(g,id2nodes,nodes,start_nid,PIs,POs):
    print(g.number_of_edges())
    rg = dgl.graph((th.tensor(g.edges()[1]),th.tensor(g.edges()[0])))
    rg = rg.to_networkx()
    print(rg.number_of_nodes())
    #nx.degree(rg,)
    #PIs = PIs.values()
    #POs = POs.values()
    nids = range(rg.number_of_nodes())
    depth = 0
    #path_lens = []
    max_path_length = 0

    for i,src in enumerate(POs):
        print('src',id2nodes[src])
        max_path_length = 0
        #for dst in PIs[2*i:2*i+2]:
        path = None
        for dst in PIs:
            if nx.has_path(rg,src-start_nid,dst-start_nid):
                if max_path_length < nx.shortest_path_length(rg,src-start_nid,dst-start_nid):
                    max_path_length = nx.shortest_path_length(rg,src-start_nid,dst-start_nid)
                    path =nx.shortest_path(rg,src-start_nid,dst-start_nid)
            g.ndata['depth'][src-start_nid] = max_path_length
            #path_lens.append(max_path_length)
            #print('dst', id2nodes[dst],path)
            depth = max(depth,max_path_length)
        n_path = []
        if path is None:
            print(id2nodes[src])
            assert False
        for n in path:
            nd = id2nodes[n]
            n_path.append(nd)
        print(n_path)
    #print(POs.values(),depth)
    return depth

def cal_depth(g,start_nid,POs):
    rg = dgl.graph((th.tensor(g.edges()[1]),th.tensor(g.edges()[0])))
    rg = rg.to_networkx()

    #PIs = PIs.values()
    #POs = POs.values()
    nids = range(rg.number_of_nodes())
    depth = 0
    #path_lens = []
    max_path_length = 0

    for src in POs:
        max_path_length = 0
        for dst in nids:
            if nx.has_path(rg,src-start_nid,dst):
                max_path_length = max(nx.shortest_path_length(rg,src-start_nid,dst),max_path_length)
        g.ndata['depth'][src-start_nid] = max_path_length
        #path_lens.append(max_path_length)
        depth = max(depth,max_path_length)
    #print(POs.values(),depth)
    return depth
if __name__ == "__main__":
    random.seed(726)
    datapaths = ["../dc/sub/implementation/test/"]

    th.multiprocessing.set_sharing_strategy('file_system')
    # print(dataset_not_edge.Dataset_n)
    dataset = Dataset_sub("adder", 32,datapaths, None)

    # graph = parse_single_file('../util1/adder4_d0.00_auto_adder.v')
    # print(graph)
