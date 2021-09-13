"""Torch Module for GraphSAGE layer"""
# pylint: disable= no-member, arguments-differ, invalid-name
import torch
from torch import nn
from torch.nn import functional as F
from options import get_options
from dgl import function as fn
from dgl.utils import expand_as_pair, check_eq_shape
from time import time

class MLP(nn.Module):
    def __init__(self,
                 in_feats,
                 out_feats,
                 n_layers,
                 bias=True,
                 activation = torch.nn.functional.relu,
                 ):
        super(MLP, self).__init__()
        self.layers = nn.ModuleList()
        self.activation = activation
        for i in range(n_layers-1):
            hidden_feats = int(in_feats / 2)
            self.layers.append(nn.Linear(in_feats,hidden_feats,bias=bias))
            in_feats = hidden_feats
        self.layers.append(nn.Linear(hidden_feats,out_feats,bias=bias))
        gain = nn.init.calculate_gain('relu')
        for layer in self.layers:
            nn.init.xavier_uniform_(layer.weight, gain=gain)
    def forward(self,features):
        h = features
        for i,layer in enumerate(self.layers):
            if i!=len(self.layers)-1:
                h = self.activation(layer(h))
            else:
                h = layer(h)
        return h

class SAGEConv(nn.Module):

    def __init__(self,
                 in_feats,
                 out_feats,
                 combine_type,
                 aggregator_type,
                 include = False,
                 feat_drop=0.,
                 bias=True,
                 norm=None,
                 activation=None):
        super(SAGEConv, self).__init__()

        self.include = include
        self._in_src_feats, self._in_dst_feats = expand_as_pair(in_feats)
        self._out_feats = out_feats
        self._aggre_type = aggregator_type
        self.norm = norm
        self.feat_drop = nn.Dropout(feat_drop)
        self.activation = activation
        # aggregator type: mean/pool/lstm/gcn
        if combine_type == 'concat':
            out_feats = int(out_feats/2)
        self.combine_type = combine_type
        if aggregator_type == 'pool':
            self.fc_pool = nn.Linear(self._in_src_feats, self._in_src_feats)
        if aggregator_type == 'lstm':
            self.lstm = nn.LSTM(self._in_src_feats, self._in_src_feats, batch_first=True)
        if aggregator_type != 'gcn':
            if include:self.fc_self = nn.Linear(self._in_dst_feats, out_feats, bias=bias)
            else: self.fc_self = nn.Linear(get_options().in_dim,out_feats,bias=bias)
        self.fc_neigh = nn.Linear(self._in_src_feats, out_feats, bias=bias)

        self.fc_combine = nn.GRUCell(input_size=out_feats, hidden_size=out_feats)

        self.eps = torch.nn.Parameter(torch.FloatTensor([0.0]))
        #print(get_options().mlp)
        # if get_options().mlp:
        #     print("mlp")
        #     self.fc_self = MLP(self._in_dst_feats,out_feats,2)
        #     self.fc_neigh = MLP(self._in_src_feats,out_feats,2)

        self.alpha = nn.Parameter(torch.tensor([0.0]))
        self.reset_parameters()

    def reset_parameters(self):
        r"""

        Description
        -----------
        Reinitialize learnable parameters.

        Note
        ----
        The linear weights :math:`W^{(l)}` are initialized using Glorot uniform initialization.
        The LSTM module is using xavier initialization method for its weights.
        """
        gain = nn.init.calculate_gain('relu')
        if self._aggre_type == 'pool':
            nn.init.xavier_uniform_(self.fc_pool.weight, gain=gain)
        if self._aggre_type == 'lstm':
            self.lstm.reset_parameters()
        # if self._aggre_type != 'gcn':
        #     nn.init.xavier_uniform_(self.fc_self.weight, gain=gain)
        # nn.init.xavier_uniform_(self.fc_neigh.weight, gain=gain)
        # nn.init.xavier_uniform_(self.fc_init.weight, gain=gain)
        #nn.init.xavier_uniform_(self.fc_neigh.parameters(),gain=gain)
    def _lstm_reducer(self, nodes):
        """LSTM reducer
        NOTE(zihao): lstm reducer with default schedule (degree bucketing)
        is slow, we could accelerate this with degree padding in the future.
        """
        m = nodes.mailbox['m'] # (B, L, D)
        batch_size = m.shape[0]
        h = (m.new_zeros((1, batch_size, self._in_src_feats)),
             m.new_zeros((1, batch_size, self._in_src_feats)))
        _, (rst, _) = self.lstm(m, h)
        return {'neigh': rst.squeeze(0)}

    def forward(self, graph, feat):
        r"""

        Description
        -----------
        Compute GraphSAGE layer.

        Parameters
        ----------
        graph : DGLGraph
            The graph.
        feat : torch.Tensor or pair of torch.Tensor
            If a torch.Tensor is given, it represents the input feature of shape
            :math:`(N, D_{in})`
            where :math:`D_{in}` is size of input feature, :math:`N` is the number of nodes.
            If a pair of torch.Tensor is given, the pair must contain two tensors of shape
            :math:`(N_{in}, D_{in_{src}})` and :math:`(N_{out}, D_{in_{dst}})`.

        Returns
        -------
        torch.Tensor
            The output feature of shape :math:`(N, D_{out})` where :math:`D_{out}`
            is size of output feature.
        """
        with graph.local_scope():
            if isinstance(feat, tuple):
                feat_src = self.feat_drop(feat[0])
                feat_dst = self.feat_drop(feat[1])
            else:
                feat_src = feat_dst = self.feat_drop(feat)
                if graph.is_block:
                    feat_dst = feat_src[:graph.number_of_dst_nodes()]

            if self.include is False:
                feat_dst = graph.dstdata['ntype']

            h_self = feat_dst

            # Handle the case of graphs without edges
            if graph.number_of_edges() == 0:
                graph.dstdata['neigh'] = torch.zeros(
                    feat_dst.shape[0], self._in_src_feats).to(feat_dst)

            if self._aggre_type == 'mean':
                graph.srcdata['h'] = feat_src
                start = time()
                graph.update_all(fn.copy_src('h', 'm'), fn.mean('m', 'neigh'))
                print(time()-start)
                h_neigh = graph.dstdata['neigh']
            elif self._aggre_type == 'gcn':
                check_eq_shape(feat)
                graph.srcdata['h'] = feat_src
                graph.dstdata['h'] = feat_dst     # same as above if homogeneous
                graph.update_all(fn.copy_src('h', 'm'), fn.sum('m', 'neigh'))
                # divide in_degrees
                degs = graph.in_degrees().to(feat_dst)
                h_neigh = (graph.dstdata['neigh'] + graph.dstdata['h']) / (degs.unsqueeze(-1) + 1)
            elif self._aggre_type == 'pool':
                graph.srcdata['h'] = F.relu(self.fc_pool(feat_src))
                graph.update_all(fn.copy_src('h', 'm'), fn.mean('m', 'neigh'))
                h_neigh = graph.dstdata['neigh']
            elif self._aggre_type == 'lstm':
                graph.srcdata['h'] = feat_src
                graph.update_all(fn.copy_src('h', 'm'), self._lstm_reducer)
                h_neigh = graph.dstdata['neigh']
            else:
                raise KeyError('Aggregator type {} not recognized.'.format(self._aggre_type))

            # GraphSAGE GCN does not require fc_self.
            if self._aggre_type == 'gcn':
                rst = self.fc_neigh(h_neigh)
            else:
                if self.combine_type == 'sum':
                    start = time()
                    rst = (1 + 0) *self.fc_self(h_self)+self.fc_neigh(h_neigh)
                    print("combine time",time()-start)
                elif self.combine_type == 'gru':
                    rst = self.fc_combine(self.fc_self(h_self),self.fc_neigh(h_neigh))

                    #rst = self.fc_neigh(rst)
                    #self.activation =  None
                else:
                    rst = torch.cat((self.fc_self(h_self),self.fc_neigh(h_neigh)),dim=1)
                #rst = rst+initial_feats
            # activation
            if self.activation is not None:
                rst = self.activation(rst)
            # normalization
            if self.norm is not None:
                rst = self.norm(rst)
            return rst
