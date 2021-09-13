

import torch
from torch import nn
from torch.nn import functional as F
from dgl.ops import edge_softmax
from dgl import function as fn
from dgl.utils import expand_as_pair, check_eq_shape
from torch.nn.parameter import Parameter
from options import get_options
class MyRelConv(nn.Module):

    def __init__(self,
                 device,
                 in_feats,
                 out_feats,
                 aggregator_type,
                 attn_n,
                 attn_e,                  #attn is a parameter with shape (num_types,1)
                 linear,
                 include=False,
                 attn_type = 'edge',    # attn_type has two valid values: edge / node
                 num_ntype=9,
                 num_etype=2,
                 feat_drop=0.,
                 attn_drop =0.0,
                 negative_slope=0.2,
                 bias=True,
                 norm=None,
                 activation=None):
        super(MyRelConv, self).__init__()
        self.device = device
        self.include = include
        #self.leaky_relu = nn.LeakyReLU(negative_slope)
        self._in_src_feats, self._in_dst_feats = expand_as_pair(in_feats)
        self._out_feats = out_feats
        self._aggre_type = aggregator_type
        self.norm = norm
        self.feat_drop = nn.Dropout(feat_drop)
        self.attn_drop = nn.Dropout(attn_drop)
        self.activation = activation
        self.linear = linear
        # aggregator type: mean/pool/lstm/gcn
        if aggregator_type == 'pool':
            self.fc_pool = nn.Linear(self._in_src_feats, self._in_src_feats)
        if aggregator_type == 'lstm':
            self.lstm = nn.LSTM(self._in_src_feats, self._in_src_feats, batch_first=True)
        if aggregator_type != 'gcn':
            if include:
                self.fc_self = nn.Linear(self._in_dst_feats, out_feats, bias=bias)
            else:
                self.fc_self = nn.Linear(get_options().in_dim, out_feats, bias=bias)
        self.fc_neigh = nn.Linear(self._in_src_feats, out_feats, bias=bias)

        self.fc_attn_e = nn.Linear(in_features=2,out_features=1,bias=bias)
        self.fc_attn_n = nn.Linear(in_features=18,out_features=1,bias=bias)
        self.fc_attn_e2 = nn.Linear(in_features=2,out_features=self._in_src_feats)
        self.attn_n = attn_n
        self.attn_e = attn_e
        self.alpha = Parameter(torch.FloatTensor([1]))
        # if attn_type == 'edge':
        #     self.attn = Parameter(torch.FloatTensor(size=(num_etype, 1)))
        #     # gain = nn.init.calculate_gain('relu')
        #     # nn.init.xavier_normal_(self.attn_e, gain=gain)
        #     nn.init.normal_(self.attn, mean=1, std=1)
        # elif attn_type == 'node':
        #     self.attn = Parameter(torch.FloatTensor(size=(num_ntype,1)))
        #     nn.init.normal_(self.attn, mean=1, std=1)
        # else:
        #     print("please choose a valid attention type")
        #     return
        self.attn_type = attn_type
        self.leaky_relu = nn.LeakyReLU(negative_slope)
        self.reset_parameters()
    def reset_parameters(self):

        gain = nn.init.calculate_gain('relu')
        if self._aggre_type == 'pool':
            nn.init.xavier_uniform_(self.fc_pool.weight, gain=gain)
        if self._aggre_type == 'lstm':
            self.lstm.reset_parameters()
        if self._aggre_type != 'gcn':
            nn.init.xavier_uniform_(self.fc_self.weight, gain=gain)
        nn.init.xavier_uniform_(self.fc_neigh.weight, gain=gain)
        #nn.init.xavier_uniform_(self.fc_attn_e.weight, gain=gain)
        self.fc_attn_e.weight = Parameter(torch.FloatTensor(torch.ones(size=(1, 2))))
        nn.init.xavier_uniform_(self.fc_attn_e2.weight, gain=gain)
        nn.init.xavier_uniform_(self.fc_attn_n.weight, gain=gain)

    def combine_attn(self,edge):
        attn_n = torch.matmul(edge.src['ntype'],self.attn_n).squeeze(1)
        attn_n1 = attn_n*edge.dst['ntype'].squeeze(1)
        #print(attn_n1)
        return {'attn_n':torch.sum(attn_n1,dim=1)}
    def forward(self, graph, feat):

        with graph.local_scope():
            feat_src = feat
            feat_dst = graph.dstdata['ntype']
            if self.include:
                feat_dst = feat_src[:graph.number_of_dst_nodes()]

            h_self = feat_dst

            # Handle the case of graphs without edges
            if graph.number_of_edges() == 0:
                graph.dstdata['neigh'] = torch.zeros(
                    feat_dst.shape[0], self._in_src_feats).to(feat_dst)
            #print(graph.dstdata['neigh'])
            if self._aggre_type == 'mean':
                graph.srcdata['h'] = feat_src
                # node type RGCN
                if self.attn_type == 'node':
                    #print(self.attn_type)
                    # ndata['ntype'] is a one-hot vector with shape (1,num_types), self.attn is a parameter with shape (num_types,1)
                    #attn_n = torch.matmul(graph.srcdata['ntype'],self.attn_n).squeeze(1)
                    #attn_n = torch.matmul(attn_n,graph.dstdata['ntype']).squeeze(1)
                    # graph.srcdata['attn_src'] = torch.matmul(graph.srcdata['ntype'],self.attn).squeeze(1)
                    # graph.dstdata['attn_dst'] = torch.matmul(graph.dstdata['ntype'], self.attn).squeeze(1)
                    # add the attention from src node and dst node
                    #graph.apply_edges(fn.u_add_v('attn_src', 'attn_dst', 'ntype'))
                    graph.apply_edges(self.combine_attn)
                    #attn_n = torch.matmul(graph.srcdata['ntype'], self.attn_n) * graph.dstdata['ntype'].squeeze(1)
                    #print(graph.edata['attn_n'])
                    #print(self.attn_n)
                    attn_n = self.leaky_relu(graph.edata.pop('attn_n'))
                    #print(attn_n)
                    # edge softmax
                    graph.edata['a'] = self.attn_drop(edge_softmax(graph, attn_n))
                    #graph.edata['a'] = attn_n
                    #print(graph.edata['a'])
                # edge type RGCN
                else:
                    #print(self.attn_type)
                    # ndata['r'] is a one-hot vector with shape (1,2), self.attn is a parameter with shape (2,1)
                    # attn_e = self.fc_attn_e2(graph.edata['r'])
                    # print(attn_e)
                    # attn_e = self.leaky_relu(attn_e)
                    # print(attn_e.shape)
                    # print("aaaas")
                    # graph.edata['a'] = edge_softmax(graph, attn_e)
                    #print('attn edge...')
                    attn_e = (graph.edata['direction']*self.alpha).squeeze(0)
                    #print(graph.number_of_edges())
                    attn_e[attn_e==0] = 1
                    #print(attn_e.shape)
                    #print(attn_e)
                    print(attn_e.shape)
                    print(graph.number_of_edges())
                    graph.edata['a'] = attn_e
                    #print(graph.edata['a'])
                    #attn_e = torch.ones((graph.number_of_edges(),1)).to(self.device)
                    #graph.edata['a'] = self.attn_drop(attn_e)
                    #print(graph.edata['a'])
                    #graph.edata['a'] = attn_e
                    #graph.edata['a'] = self.attn_drop(edge_softmax(graph,graph.edata['a']))

                # u_mul_e is appled to all edges, let the message passing through ant edge multiplied by its attention 'a'
                graph.update_all(fn.u_mul_e('h', 'a', 'm'), fn.mean('m', 'neigh'))
                #graph.update_all(fn.copy_src('h', 'm'), fn.mean('m', 'neigh'))
                h_neigh = graph.dstdata['neigh']

            else:
                raise KeyError('Aggregator type {} not recognized.'.format(self._aggre_type))

            # GraphSAGE GCN does not require fc_self.

            rst = self.fc_self(h_self) + self.fc_neigh(h_neigh)
            # activation
            if self.activation is not None:
                rst = self.activation(rst)
            # normalization
            if self.norm is not None:
                rst = self.norm(rst)
            return rst
