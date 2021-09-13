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
from util.dc_verilog_parser import DcParser
from options import get_options
from torch.nn.parameter import Parameter


def parse_single_file(parser,filename,label,label2id):
    # nodes: list of (node, {"type": type}) here node is a str ,like 'n123' or '1'b1'
    # note that here node type does not include buf /not
    label2id = {
        "1'b0": 0,
        "1'b1": 1,
        'AND': 2,
        'DFF': 3,
        'DFFSSR': 4,
        'DFFAS': 5,
        'AO': 6,
        'INV': 7,
        'OA': 8,
        'AOI': 9,
        'NAND': 10,
        'OAI': 11,
        'OR': 12,
        'NOR': 13,
        'IBUFF': 14,
        'DELLN': 15,
        'MUX': 16,
        'XOR': 17,
        'XNOR': 18,
        'NBUFF': 19,
        'MAJ': 20,
        'PI': 21,
    }
    nodes, edges = parser.parse(filename,label_region=get_options().region)
    print(len(nodes))
    # nodes,edges = parser.remove_div(nodes,edges)
    # print(len(nodes))
    #print("num_nodes:",len(nodes))
    # print(nodes)
    G = nx.DiGraph()
    G.add_nodes_from(nodes)
    G.add_edges_from(edges)
    # adders = structural.find_rca(G)
    # nodes, edges, in_nodes, out_nodes = structural.add_cla_csa(nodes, edges, adders)
    # for n in nodes:
    #     n[1]["is_input"] = 1 if n[0] in in_nodes else 0
    #     n[1]["is_output"] = 1 if n[0] in out_nodes else 0

    # assign an integer id
    node2id = {}
    for n in nodes:
        if node2id.get(n[0]) is None:
            nid = len(node2id)
            node2id[n[0]] = nid
    #print("num_nodes:{}".format(len(node2id)))
    is_adder = th.zeros((len(node2id), 1), dtype=th.long)
    is_input = th.zeros((len(node2id), 1), dtype=th.long)
    is_output = th.zeros((len(node2id), 1), dtype=th.long)
    for n in nodes:
        nid = node2id[n[0]]
        # print(nid)
        if label2id.get(n[1]['type']) is None:
            type_id = len(label2id)
            label2id[n[1]['type']] = type_id
        if get_options().region:
            is_adder[nid][0] = n[1]['is_adder']
        else:
            is_input[nid][0] = n[1]["is_input"]
            is_output[nid][0] = n[1]["is_output"]

    ntype = th.zeros((len(node2id), get_options().in_dim), dtype=th.float)
    for n in nodes:
        nid = node2id[n[0]]
        ntype[nid][label2id[n[1]["type"]]] = 1

    src_nodes = []
    dst_nodes = []
    is_reverted = []
    for src, dst, edict in edges:
        src_nodes.append(node2id[src])
        dst_nodes.append(node2id[dst])
        is_reverted.append([0, 1] if edict["is_reverted"] else [1, 0])

    graph = dgl.graph(
        (th.tensor(src_nodes), th.tensor(dst_nodes)), num_nodes=len(node2id)
    )
    for n in nodes:
        nid = node2id[n[0]]
    graph.ndata["ntype"] = ntype
    if get_options().region:
        graph.ndata["label_ad"] = label * is_adder
    else:
        graph.ndata["label_i"] = is_input
        graph.ndata["label_o"] = is_output
    graph.edata["r"] = th.FloatTensor(is_reverted)


    return graph


class Dataset_dc(DGLDataset):
    def __init__(self, top_module,data_paths,label2id):
        self.label2id =label2id
        self.data_paths = data_paths
        self.parser = DcParser(top_module,["alu_DP_OP", "add_x"],'xor')
        super(Dataset_dc, self).__init__(name="dac")
        # self.alpha = Parameter(th.tensor([1]))

    def process(self):
        type2label = {"ling_adder":1,"hybrid_adder":2, "cond_sum_adder":3, "sklansky_adder":4, "brent_kung_adder":5, "bounded_fanout_adder":6,"unknown":7}
        self.batch_graphs = []
        self.graphs = []
        self.len = 0
        for path in self.data_paths:
            files = os.listdir(path)
            random.shuffle(files)
            exclude_files = []
            for file in files:
                case_name = file.split('.')[0].split('_')[0]
                # print(case_name)
                # if case_name in ['ut1','ut2','ut3','ut36']:
                #     exclude_files.append(file)
                #     continue
                print("Processing file {}".format(file))
                if file.endswith("v") and not file.startswith('hier') and not file.split('.')[0].endswith('d10') \
                        and file.find('auto')==-1:
                    adder_type = file.split('.')[1][3:]
                    label = type2label.get(adder_type, 7)
                    label = 1
                    print("label",label)
                    self.len += 1
                    graph = parse_single_file(self.parser,os.path.join(path , file),label,self.label2id)
                    self.graphs.append(graph)

        self.batch_graph = dgl.batch(self.graphs)

    def __len__(self):
        return self.len


if __name__ == "__main__":
    random.seed(726)
    datapaths = ["../dc/rocket/implementation/"]
    th.multiprocessing.set_sharing_strategy('file_system')
    # print(dataset_not_edge.Dataset_n)
    #dataset = Dataset_dc("Rocket", datapaths, None)
    with open("C:\\Users\\Zeay\\Documents/GitHub\\graph-detection\\dc\\sub\\adder8\\test.v",'r') as f:
        print(f.readlines())
    parser = DcParser('rocket',["alu_DP_OP", "add_x"],'xor')
    parse_single_file(parser,"C:\\Users\\Zeay\\Documents/GitHub\\graph-detection\\dc\\sub\\adder8\\test.v",1,None)

