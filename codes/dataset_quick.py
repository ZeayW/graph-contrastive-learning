import dgl
from dgl.data import DGLDataset
import torch as th
import numpy as np
import os
import random
from options import get_options


def parse_single_file(filename):
    with open(filename) as f:
        num_nodes,num_edges = f.readline().split(' ')
        num_nodes =int(num_nodes)
        num_edges = int(num_edges)

        origin_num_nodes = num_nodes
        # create a dgl graph from the file
        # the next num_edges lines are the edges
        # each line is: u v weight
        # after the edges are num_nodes lines of nodes
        # each line is: node class hop
        src_nodes = []
        dst_nodes = []
        labels = []
        features =[]

        for i in range(num_nodes):
            line = f.readline()
            node,type,label = line.split(" ")
            type = int(type)
            label = int(label)

            feature = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,0.0,0.0,0.0]
            feature[type] = 1.0
            features.append(feature)
            labels.append([label])

        for i in range(num_edges):
            line = f.readline()
            source_node,dst_node = line.split(' ')
            # if int(source_node)>=num_nodes or int(dst_node) >= num_nodes :
            #     print("error ",i," ",source_node," ",dst_node," ")
            src_nodes.append(int(source_node))
            dst_nodes.append(int(dst_node))


        # print(num_nodes)
        # print(len(src_nodes))
        graph = dgl.graph(
            (th.tensor(src_nodes), th.tensor(dst_nodes)), num_nodes=num_nodes,
        )


        #graph.edata["w"] = th.tensor(weights)

        labels = th.tensor(np.array(labels))
        labels = labels.long()
        graph.ndata["label"] = labels
        graph.ndata["feat"] = th.tensor(features)

        #graph.ndata["feat"] = th.rand(num_nodes, get_options().in_dim)
        #graph.ndata["feat"] = th.zeros(num_nodes, get_options().in_dim) + 0.1

    return graph


class Dataset_q(DGLDataset):
    def __init__(self, data_path):
        self.data_path = data_path
        super(Dataset_q, self).__init__(name="dac")

    def process(self):
        self.batch_graphs = []
        self.graphs = []
        self.len = 0
        files = os.listdir(self.data_path)
        random.shuffle(files)
        for file in files:
            print("Processing file {}".format(file))
            if file.endswith("data"):
                self.len += 1
                graph = parse_single_file(self.data_path + file)
                self.graphs.append(graph)

        self.batch_graph = dgl.batch(self.graphs)

    def __len__(self):
        return self.len


