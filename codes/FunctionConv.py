"""Torch Module for FunctionConv layer"""
# pylint: disable= no-member, arguments-differ, invalid-name
import torch
from torch import nn
from torch.nn import functional as F
from options import get_options
from dgl import function as fn
from dgl.utils import expand_as_pair, check_eq_shape
from time import time
from torch.nn import Parameter


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

        # initialize the gate functions, each for one gate type, e.g., AND, OR, XOR...
        self.gate_functions = nn.ModuleList()
        gain = nn.init.calculate_gain('relu')
        for i in range(get_options().in_dim):
            self.gate_functions.append(nn.Linear(in_feats,out_feats))
            nn.init.xavier_uniform_(self.gate_functions[i].weight, gain=gain)

        self._out_feats = out_feats
        self._aggre_type = aggregator_type
        self.norm = norm
        self.feat_drop = nn.Dropout(feat_drop)
        self.activation = activation
        self.weight =  Parameter(torch.Tensor(get_options().in_dim,in_feats, out_feats)).permute(2,0,1)

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
        nn.init.xavier_uniform_(self.weight, gain=gain)


    def apply_nodes_func(self,nodes):
        r"""

               Description
               -----------
               An apply function to further update the node features after the message reduction.

               Parameters
               ----------
               nodes: the applied nodes

               Returns
               -------
               {'msg_name':msg}
               msg: torch.Tensor
                   The aggregated messages of shape :math:`(N, D_{out})` where : N is number of nodes, math:`D_{out}`
                   is size of messages.
               """

        gate_inputs = nodes.data['neigh']   # the messages to aggregate
        gate_types = nodes.data['ntype2']   # the node-type of the target nodes
        res = nodes.data['temp']            # a tensor used to save the result messages

        # for each gate type, use an independent aggregator (function) to aggregate the messages
        for i in range(get_options().in_dim):
            mask = gate_types==i    # nodes of type i
            res[mask] = self.gate_functions[i](gate_inputs[mask])

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
        return {'neigh':res}

    def gate_function(self,node):
        print(node.data)
        print(len(node.data['ntype']))
        gate_inputs = node.data['neigh']
        gate_type = node.data['ntype']
        gate_function = torch.matmul(gate_type, self.weight).permute(1, 2, 0)
    def forward(self,act_flag, graph, feat):
        r"""

        Description
        -----------
        Compute FunctionalGNN layer.

        Parameters
        ----------
        act_flag: boolean
            determine whether to use an activation function or not
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
            feat_src = feat

            graph.srcdata['h'] = feat_src
            r"""
            update_all is used to reduce and aggregate the messages 
            parameters:
                message_func (dgl.function.BuiltinFunction or callable) 
                    The message function to generate messages along the edges. 
                    It must be either a DGL Built-in Function or a User-defined Functions.
                reduce_func (dgl.function.BuiltinFunction or callable) 
                    The reduce function to aggregate the messages. 
                    It must be either a DGL Built-in Function or a User-defined Functions.
                apply_node_func (callable, optional) 
                    An optional apply function to further update the node features after 
                    the message reduction. It must be a User-defined Functions.
            """
            # we used mean as the reduce function , and a self-defined function as the apply function
            graph.update_all(fn.copy_src('h', 'm'), fn.mean('m', 'neigh'),self.apply_nodes_func)
            rst = graph.dstdata['rst']
            if act_flag and self.activation is not None:
                rst = self.activation(rst)

            return rst
