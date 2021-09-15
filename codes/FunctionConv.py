"""Torch Module for GraphSAGE layer"""
# pylint: disable= no-member, arguments-differ, invalid-name
import torch
from torch import nn
from torch.nn import functional as F
from options import get_options
from dgl import function as fn
from dgl.utils import expand_as_pair, check_eq_shape
from time import time
from torch.nn import Parameter
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

class FunctionConv(nn.Module):

    def __init__(self,
                 in_feats,
                 out_feats,
                 combine_type,
                 aggregator_type,
                 label,
                 include = False,
                 feat_drop=0.,
                 bias=True,
                 norm=None,
                 activation=None):
        super(FunctionConv, self).__init__()
        self.label = label
        self.include = include
        self._in_src_feats, self._in_dst_feats = expand_as_pair(in_feats)
        self.gate_functions = nn.ModuleList()
        gain = nn.init.calculate_gain('relu')
        for i in range(get_options().in_dim):
            #self.gate_functions.append(MLP(in_feats=hidden_dim,out_feats=hidden_dim,n_layers=3))
            self.gate_functions.append(nn.Linear(in_feats,out_feats))
            #self.gate_functions.append(Parameter(th.Tensor(hidden_dim,hidden_dim)))
            nn.init.xavier_uniform_(self.gate_functions[i].weight, gain=gain)
        #self.gate_functions = gate_functions
        # for i in range(get_options().in_dim):
        #     self.gate_functions.append(Parameter(torch.Tensor(in_feats, out_feats)))

        self._out_feats = out_feats
        self._aggre_type = aggregator_type
        self.norm = norm
        self.feat_drop = nn.Dropout(feat_drop)
        self.activation = activation
        self.weight =  Parameter(torch.Tensor(get_options().in_dim,in_feats, out_feats)).permute(2,0,1)
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
        nn.init.xavier_uniform_(self.weight, gain=gain)
        # for i in range(get_options().in_dim):
        #     nn.init.xavier_uniform_(self.gate_functions[i], gain=gain)
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


    def apply_nodes_func(self,nodes):
        gate_inputs = nodes.data['neigh']
        #print('input shape',gate_inputs.shape)
        gate_types = nodes.data['ntype2']
        #print('weight shape',self.weight.shape,self.weight)
        #print(gate_types.device,self.weight.device)
        #gate_function = torch.matmul(nodes.data['ntype'],self.weight).permute(1,2,0)
        #print('gate function',gate_function.shape,gate_function)
        res = nodes.data['temp']
        # print(self.gate_functions[0].weight.shape)
        # print(res.shape)
        for i in range(get_options().in_dim):
            index= gate_types==i
            #print(gate_inputs[index].shape,self.gate_functions[i].weight.shape)
            res[index] = self.gate_functions[i](gate_inputs[index])
            #res[index] = torch.matmul(gate_inputs[index],self.gate_functions[i])

        return {'rst':res}

    def aggregate_func(self,nodes):
        #print(nodes.mailbox['m'].shape,nodes.mailbox['m'])
        gate_types = nodes.data['ntype2']
        #print(gate_types[gate_types==9])
        res = nodes.data['temp']
        max_mask = (gate_types==9) | (gate_types==11)
        mean_mask = (gate_types!=9) & (gate_types!=11)
        if len(res[max_mask])!=0: res[max_mask] = nodes.mailbox['m'][max_mask].max(1).values
        res[mean_mask] = nodes.mailbox['m'][mean_mask].mean(1)
        # for i in range(get_options().in_dim):
        #     index= gate_types==i
        #     if len(res[index])==0:
        #         continue
        #     if i== 9 or i==14:     # or gate / mux gate
        #         #print(i,len(res[index]))
        #         #print(len(nodes.mailbox['m'][index]))
        #         res[index] = nodes.mailbox['m'][index].max(1).values
        #     else:
        #         res[index] = nodes.mailbox['m'][index].mean(1)
        #     #print(gate_inputs[index].shape,self.gate_functions[i].weight.shape)
        #     #res[index] = self.gate_functions[i](gate_inputs[index])
        #     #res[index] = torch.matmul(gate_inputs[index],self.gate_functions[i])
        # #print(res.shape,res)
        return {'neigh':res}
    def gate_function(self,node):
        print(node.data)
        print(len(node.data['ntype']))
        gate_inputs = node.data['neigh']
        gate_type = node.data['ntype']
        gate_function = torch.matmul(gate_type, self.weight).permute(1, 2, 0)
    def forward(self,act_flag, graph, feat):
        begin = time()
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

            #start = time()

            feat_src = feat
            feat_dst = graph.dstdata['ntype']
            if self.include:
                feat_dst = feat_src[:graph.number_of_dst_nodes()]

            h_self = feat_dst
            # Handle the case of graphs without edges
            #prepare_time = (time()-start)*1000
            # if self._aggre_type == 'mean':
            #start = time()
            graph.srcdata['h'] = feat_src
            #update1 = 1000 * (time() - start)
            #s2 = time()

            #graph.dstdata['aaa'] = feat_dst
            #print(graph)
            #print('num dst nodes:',graph.number_of_dst_nodes())
            #print(graph.srcdata['h'].shape,graph.srcdata['h'])
            graph.update_all(fn.copy_src('h', 'm'), fn.mean('m', 'neigh'),self.apply_nodes_func)
            #graph.update_all(fn.copy_src('h', 'm'), self.aggregate_func, self.apply_nodes_func)
            #graph.apply_nodes(self.gate_function, ntype='_N')
            #update2 = 1000*(time()-s2)
            #print(time()-start)
            # if graph.dstdata.get('neigh',None) is None:
            #     print(graph)
            #     print(graph.srcdata)
            #     print(graph.dstdata)
            #     print(feat)
            #h_neigh = graph.dstdata['neigh']
            #print(graph.dstdata['label_i']==True)

            #update_time = 1000*(time() - start)
            # elif self._aggre_type == 'gcn':
            #     check_eq_shape(feat)
            #     graph.srcdata['h'] = feat_src
            #     graph.dstdata['h'] = feat_dst     # same as above if homogeneous
            #     graph.update_all(fn.copy_src('h', 'm'), fn.sum('m', 'neigh'))
            #     # divide in_degrees
            #     degs = graph.in_degrees().to(feat_dst)
            #     h_neigh = (graph.dstdata['neigh'] + graph.dstdata['h']) / (degs.unsqueeze(-1) + 1)
            # elif self._aggre_type == 'pool':
            #     graph.srcdata['h'] = F.relu(self.fc_pool(feat_src))
            #     graph.update_all(fn.copy_src('h', 'm'), fn.mean('m', 'neigh'))
            #     h_neigh = graph.dstdata['neigh']
            # elif self._aggre_type == 'lstm':
            #     graph.srcdata['h'] = feat_src
            #     graph.update_all(fn.copy_src('h', 'm'), self._lstm_reducer)
            #     h_neigh = graph.dstdata['neigh']
            # else:
            #     raise KeyError('Aggregator type {} not recognized.'.format(self._aggre_type))

            # GraphSAGE GCN does not require fc_self.
            # if self._aggre_type == 'gcn':
            #     rst = self.fc_neigh(h_neigh)
            # else:
            #     if self.combine_type == 'sum':
            #start = time()
            rst = graph.dstdata['rst']
            #rst = rst+self.fc_self(h_self)
            #print(rst.shape,rst)
            if act_flag and self.activation is not None:
                rst = self.activation(rst)
            #else:
            #    rst = rst + self.fc_self(h_self)
            # if act_flag and self.activation is not None:
            #     rst = (1 + 0) * self.fc_self(h_self) + self.fc_neigh(h_neigh)
            #     rst = self.activation(rst)
            # # when predicting input, for the last layer, do not include h_self
            # elif self.label == 'in':
            #     rst = self.fc_self(h_self) + self.fc_neigh(h_neigh)
            # else:
            #     rst = (1 + 0) * self.fc_self(h_self) + self.fc_neigh(h_neigh)
            #activate_time=1000*(time()-start)
            # normalization
            # if self.norm is not None:
            #     rst = self.norm(rst)
            #total_time=1000*(time()-begin)

            # print("len_feat",len(feat),"prepare:",round(prepare_time,3),"update1:",round(update1,3),"update2:",round(update2,3),
            #       "update:",round(update_time,3),"combine:",round(combine_time,3),"activate:",round(activate_time,3),"total:",round(total_time,3))
            return rst
