"""Torch Module for Graph Isomorphism Network layer"""
# pylint: disable= no-member, arguments-differ, invalid-name
import torch as th
from torch import nn

from dgl import function as fn
from dgl.utils import expand_as_pair

class MLP(nn.Module):
    def __init__(self,
                 in_feats,
                 out_feats,
                 n_layers,
                 bias=True,
                 activation = th.nn.functional.relu,
                 ):
        super(MLP, self).__init__()
        self.n_layers = n_layers
        self.layers = nn.ModuleList()
        self.activation = activation
        hidden_feats = 2*in_feats
        for i in range(n_layers-1):
            self.layers.append(nn.Linear(in_feats,hidden_feats,bias=bias))
            in_feats = hidden_feats
        self.layers.append(nn.Linear(hidden_feats,out_feats,bias=bias))
        # gain = nn.init.calculate_gain('relu')
        # for layer in self.layers:
        #     nn.init.xavier_uniform_(layer.weight, gain=gain)
    def forward(self,features):
        h = features
        for i in range(self.n_layers-1):
            h = self.activation(self.layers[i](h))
        #print(h.shape)
        h = self.activation(self.layers[-1](h).squeeze(-1))
        #print("aa")
        return h
        # for i,layer in enumerate(self.layers):
        #     if i!=len(self.layers)-1:
        #         h = layer(self.activation(h))
        #     else:
        #         h = layer(h)
        # return h

class GINConv(nn.Module):

    def __init__(self,
                 in_feats,
                 out_feats,
                 aggregator_type,
                 include=False,
                 init_eps=0,
                 learn_eps=True):
        super(GINConv, self).__init__()
        self.apply_func = MLP(in_feats,out_feats,2)
        self.aggregator_type = aggregator_type
        # if aggregator_type == 'sum':
        #     self.reducer = fn.sum
        # elif aggregator_type == 'max':
        #     self.reducer = fn.max
        # elif aggregator_type == 'mean':
        #     self.reducer = fn.mean
        # else:
        #     raise KeyError('Aggregator type {} not recognized.'.format(aggregator_type))
        # to specify whether eps is trainable or not.
        #if learn_eps:
        self.eps = th.nn.Parameter(th.FloatTensor([init_eps]))
        self.include = include

        # else:
        #     self.register_buffer('eps', th.FloatTensor([init_eps]))

    def forward(self, graph, feat):

        with graph.local_scope():
            feat_src, feat_dst = expand_as_pair(feat, graph)

            # feat_src  = feat
            # feat_dst = graph.dstdata['ntype']
            # if self.include:
            #     feat_dst = feat_src[:graph.number_of_dst_nodes()]
            graph.srcdata['h'] = feat_src
            #exit()
            graph.update_all(fn.copy_u('h', 'm'), fn.mean('m', 'neigh'))
            rst = (1 + self.eps) * feat_dst + graph.dstdata['neigh']
            if self.apply_func is not None:
                rst = self.apply_func(rst)
            return rst
