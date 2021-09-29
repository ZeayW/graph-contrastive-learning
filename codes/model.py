import torch as th
import torch.nn as nn
from torch.nn import CrossEntropyLoss
import torch.nn.functional as F
import tensorflow as tf
import dgl
from torch.autograd import Variable
from dgl.nn.pytorch.conv import relgraphconv
from dgl.nn.pytorch.conv import sageconv,gatconv,graphconv,ginconv
#from dgl.nn import SAGEConv
from MyGAT import GATConv
from MySageConv import SAGEConv
from FunctionConv import FunctionConv
from MyGIN import GINConv
#from dgl.nn import GATConv,GraphConv#,RelGraphConv
from MyRelConv import MyRelConv

from dgl import function as fn
import numpy as np
from torch.nn.parameter import Parameter
from options import get_options
from time import time
#  GCN Model\
class MLP(nn.Module):
    def __init__(self,
                 in_feats,
                 out_feats,
                 n_layers,
                 bias=True,
                 activation = th.nn.functional.relu,
                 ):
        super(MLP, self).__init__()
        self.layers = nn.ModuleList()
        self.activation = activation

        for i in range(n_layers-1):
            #hidden_feats = int(in_feats / 2)
            hidden_feats = in_feats
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

class RGCN(nn.Module):
    def __init__(
        self,
        device,
        in_dim,
        hidden_dim,
        out_dim,
        num_heads,
        n_layers,
        dropout,
        activation=th.nn.functional.relu,
        aggregation_type = 'mean'
    ):
        super(RGCN, self).__init__()
        self.in_dim = in_dim
        self.hidden_dim = hidden_dim
        self.out_dim = out_dim
        self.n_layers = n_layers
        self.dropout = nn.Dropout(p=dropout)
        self.layers = nn.ModuleList()
        # input layer
        self.layers.append(
            RelGraphConv(in_dim, hidden_dim, num_rels=2, activation=activation)
        )
        # hidden layers
        for i in range(n_layers - 1):
            self.layers.append(
                RelGraphConv(
                    hidden_dim,
                    hidden_dim,
                    num_rels=2,
                    activation=activation,
                )
            )
        # output layer
        self.layers.append(RelGraphConv(hidden_dim, out_dim, num_rels=2))

    def forward(self, blocks, features):
        h = features
        for i, layer in enumerate(self.layers):
            if i != 0:
                h = self.dropout(h)
            h = layer(blocks[i], h, blocks[i].edata['r'])

        return h

class GAT(nn.Module):
    def __init__(
        self,
        include,
        device,
        in_dim,
        hidden_dim,
        out_dim,
        num_heads,
        n_layers,
        dropout,
        combine_type='mean',
        activation=th.nn.functional.relu,
        aggregation_type='mean'
    ):
        super(GAT, self).__init__()

        self.in_dim = in_dim
        self.hidden_dim = hidden_dim
        self.out_dim = out_dim
        self.num_heads=num_heads
        self.n_layers = n_layers
        self.dropout = nn.Dropout(p=dropout)
        self.layers = nn.ModuleList()

        # input layer
        self.layers.append(
            GATConv(in_dim, hidden_dim,num_heads[0],combine_type='concat',activation=activation,allow_zero_in_degree=True),
        )
        # hidden layers
        for i in range(n_layers - 1):
            self.layers.append(
                GATConv(
                    hidden_dim,
                    hidden_dim,
                    num_heads[0],
                    combine_type='concat',
                    activation=activation,
                    allow_zero_in_degree=True
                )
            )
        # output layer
        self.layers.append(GATConv(hidden_dim,out_dim,num_heads=num_heads[1],combine_type='mean',allow_zero_in_degree=True))

    def forward(self, blocks, features):
        h = features
        for i, layer in enumerate(self.layers):
            if i != 0:
                h = self.dropout(h)
            #print(layer.fc)
            h = layer(blocks[i], h)
            #print(h.shape)
            #print(h.shape)
        return h.squeeze(1)

class GIN(nn.Module):
    def __init__(
        self,
        include,
        device,
        in_dim,
        hidden_dim,
        out_dim,
        num_heads,
        n_layers,
        dropout,
        combine_type=None,
        activation=th.nn.functional.relu,
        aggregation_type='mean',
    ):
        super(GIN, self).__init__()
        self.activation = activation
        #print(n_layers)
        self.in_dim = in_dim
        self.hidden_dim = hidden_dim
        self.out_dim = out_dim
        self.n_layers = n_layers
        self.dropout = nn.Dropout(p=dropout)
        self.layers = nn.ModuleList()
        self.fc_init = nn.Linear(in_dim,hidden_dim)
        # input layer
        #print(n_layers)
        in_dim = hidden_dim

        # hidden layers
        for i in range(n_layers):
            self.layers.append(
                GINConv(
                    in_dim,
                    hidden_dim,
                    include = include,
                    aggregator_type=aggregation_type,

                )
            )
            in_dim = hidden_dim
        # output layer

        self.layers.append(GINConv(in_dim, out_dim,include=include,aggregator_type=aggregation_type))

    def forward(self, blocks, features):
        #print("h:",features.shape)
        #h = features
        h = self.activation(self.fc_init(features))

        for i in range(self.n_layers + 1):
            if i != 0:
                h = self.dropout(h)
            h = self.layers[i](blocks[i], h)

        return h.squeeze(1)

class GNN_1l(nn.Module):
    def __init__(
        self,
        label,
        include,
        device,
        in_dim,
        hidden_dim,
        out_dim,
        num_heads,
        n_layers,
        dropout,
        combine_type='sum',
        activation=th.relu,
        aggregation_type='mean',
    ):
        super(GNN_1l, self).__init__()
        self.activation = activation
        #print(n_layers)
        self.in_dim = in_dim
        self.hidden_dim = hidden_dim
        self.out_dim = out_dim
        self.n_layers = n_layers
        self.dropout = nn.Dropout(p=dropout)
        self.layers = nn.ModuleList()
        self.fc_init = nn.Linear(in_dim,hidden_dim)
        self.fc_out = nn.Linear(hidden_dim,out_dim)
        in_dim = hidden_dim
        # input layer
        #print(n_layers)
        # if n_layers>0:
        #     self.layers.append(
        #         SAGEConv(in_dim, hidden_dim, include=include,combine_type = 'sum',aggregator_type=aggregation_type, activation=activation)
        #     )
        # hidden layers
        self.conv = SAGEConv(
                    hidden_dim,
                    hidden_dim,
                    label = label,
                    include=False,
                    combine_type = 'sum',
                    aggregator_type=aggregation_type,
                    activation=activation,
                )


    def forward(self, blocks, features):
        #print("h:",features.shape)
        depth = len(blocks)
        h = self.activation(self.fc_init(features))
        for i in range(depth):
            if i != 0:
                h = self.dropout(h)
            act_flag = (i!=depth-1)
            h = self.conv(act_flag,blocks[i], h)
        #     runtime = time()-start
        #     runtimes.append(runtime)
        # print(runtimes)
        #h = self.fc_out(h)
        return h.squeeze(1)

class FuncGCN(nn.Module):
    def __init__(
        self,
        label,
        include,
        device,
        in_dim,
        hidden_dim,
        out_dim,
        num_heads,
        n_layers,
        dropout,
        combine_type='sum',
        activation=th.relu,
        aggregation_type='mean',
    ):
        super(FuncGCN, self).__init__()
        self.activation = activation
        #print(n_layers)
        self.in_dim = in_dim
        self.hidden_dim = hidden_dim
        self.out_dim = out_dim
        self.n_layers = n_layers
        self.dropout = nn.Dropout(p=dropout)
        self.layers = nn.ModuleList()
        self.fc_out = nn.Linear(hidden_dim,out_dim)
        # self.gate_functions = nn.ModuleList()
        # gain = nn.init.calculate_gain('relu')
        # for i in range(get_options().in_dim):
        #     #self.gate_functions.append(MLP(in_feats=hidden_dim,out_feats=hidden_dim,n_layers=3))
        #     self.gate_functions.append(nn.Linear(hidden_dim,hidden_dim))
        #     #self.gate_functions.append(Parameter(th.Tensor(hidden_dim,hidden_dim)))
        #     nn.init.xavier_uniform_(self.gate_functions[i].weight, gain=gain)
        in_dim = hidden_dim

        # input layer
        #print(n_layers)
        # if n_layers>0:
        #     self.layers.append(
        #         SAGEConv(in_dim, hidden_dim, include=include,combine_type = 'sum',aggregator_type=aggregation_type, activation=activation)
        #     )
        # hidden layers
        self.conv = FunctionConv(
                    in_dim,
                    hidden_dim,
                    include=include,
                    label = label,
                    combine_type = 'sum',
                    aggregator_type=aggregation_type,
                    activation=activation,
                )

        # output layer



    def forward(self, blocks, features):
        depth = len(blocks)
        h = features
        for i in range(depth):
            if i != 0:
                h = self.dropout(h)
            act_flag = (i != depth - 1)
            h = self.conv(act_flag, blocks[i], h)
        #     runtime = time()-start
        #     runtimes.append(runtime)
        # print(runtimes)
        # h = self.fc_out(h)
        if self.hidden_dim!=self.out_dim:
            h= self.fc_out(h)
        return h.squeeze(1)


class GCN(nn.Module):
    def __init__(
        self,
        label,
        include,
        device,
        in_dim,
        hidden_dim,
        out_dim,
        num_heads,
        n_layers,
        dropout,
        combine_type='sum',
        activation=th.relu,
        aggregation_type='mean',
    ):
        super(GCN, self).__init__()
        self.activation = activation
        #print(n_layers)
        self.in_dim = in_dim
        self.hidden_dim = hidden_dim
        self.out_dim = out_dim
        self.n_layers = n_layers
        self.dropout = nn.Dropout(p=dropout)
        self.layers = nn.ModuleList()
        self.fc_init = nn.Linear(in_dim,hidden_dim)
        in_dim = hidden_dim
        # input layer
        #print(n_layers)
        # if n_layers>0:
        #     self.layers.append(
        #         SAGEConv(in_dim, hidden_dim, include=include,combine_type = 'sum',aggregator_type=aggregation_type, activation=activation)
        #     )
        # hidden layers
        for i in range(n_layers):
            self.layers.append(
                SAGEConv(
                    in_dim,
                    hidden_dim,
                    include=include,
                    label = label,
                    combine_type = 'sum',
                    aggregator_type=aggregation_type,
                    activation=activation,
                )
            )
            in_dim = hidden_dim
        # output layer

        self.layers.append(SAGEConv(in_dim, out_dim,include=include,label = label,combine_type='sum', aggregator_type=aggregation_type))

    def forward(self, blocks, features):
        #print("h:",features.shape)
        h = features
        #print(blocks)
        #print(features.shape,self.fc_init.weight.shape)
        h = self.activation(self.fc_init(features))
        runtimes = []
        for i in range(self.n_layers + 1):
            if i != 0:
                h = self.dropout(h)
            start = time()
            h = self.layers[i](True,blocks[i], h)
        #     runtime = time()-start
        #     runtimes.append(runtime)
        # print(runtimes)
        return h.squeeze(1)

class InceptionBlock(nn.Module):
    def __init__(
            self,
            label,
            include,
            device,
            in_dim,
            hidden_dim,
            out_dim,
            num_heads,
            n_layers,
            dropout=0,
            combine_type = 'concat',
            activation=th.nn.functional.relu,
            aggregation_type='mean',
    ):
        super(InceptionBlock, self).__init__()
        self.GCNs = nn.ModuleList()
        self.nlayers = n_layers
        self.combine_type = combine_type
        self.fc_self = nn.Linear(get_options().in_dim,out_dim,True)
        #self.fn_weight = nn.Linear(in_features=get_options().in_dim,out_features=3,bias=True)
        model1 = GCN(include=include,device=device,in_dim=in_dim,hidden_dim=hidden_dim,out_dim=out_dim,num_heads=None,
            n_layers=n_layers[0],dropout=dropout,activation=activation,aggregation_type=aggregation_type,).to(device)
        self.GCNs.append(model1)
        for i in range(len(n_layers)-1):
            model = GCN(include=include,device=device, in_dim=get_options().in_dim, hidden_dim=hidden_dim, out_dim=out_dim, num_heads=None,
                         n_layers=n_layers[i+1], dropout=dropout, activation=activation,
                         aggregation_type=aggregation_type, ).to(device)
            self.GCNs.append(model)
        self.out_dim = out_dim
        if self.combine_type == 'concat':
            in_dim = len(n_layers)*out_dim
        elif self.combine_type == 'max' or self.combine_type=='add':
            in_dim = out_dim
        else:
            print("please choose a valid combine type")
            exit(0)
        self.fc_combine = nn.Linear(in_dim,self.out_dim,True)
    # here the number of blocks should be equal to the max depth of Inception block
    def forward(self,blocks,features):
        #print(blocks)
        #print(features.shape)
        h = None

        for i,GCN in enumerate(self.GCNs):
            depth = GCN.n_layers + 1
            if i==0:
                in_feats = features
            else:
                in_feats = blocks[-depth].srcdata['ntype']
            #print("in_feat:",in_feats.shape)
            #print(GCN)
            #print("depth:",depth)
            #print(blocks[-depth:])
            hi = GCN(blocks[-depth:], in_feats)
            hi = th.abs(hi)
            #print(hi.shape)
            if h is None:
                h =hi
            else:
                if self.combine_type == 'concat':
                    h = th.cat((h,hi),dim=1)
                elif self.combine_type == 'max':
                    h = th.max(h,hi)
                elif self.combine_type == 'add':
                    h = h+ hi
                else:
                    print("please choose a valid combine type")
                    exit(0)
        #h = th.cat((h1, h2), dim=1)
        h = self.fc_combine(h)

        return h

class InceptionGCN(nn.Module):
    def __init__(
            self,
            label,
            include,
            device,
            in_dim,
            hidden_dim,
            out_dim,
            num_heads,
            n_layers,
            dropout,
            combine_type='concat',
            activation=th.nn.functional.relu,
            aggregation_type='mean',
    ):
        super(InceptionGCN, self).__init__()
        self.in_dim = in_dim
        self.out_dim = out_dim
        n_blocks = int((n_layers-1)/3)
        self.GCN1 = GCN(
                device=device,
                in_dim=in_dim,
                hidden_dim=hidden_dim,
                out_dim=hidden_dim,
                num_heads=None,
                n_layers=0,
                dropout=dropout,
                aggregation_type=aggregation_type,
            ).to(device)
        self.incp_blocks = nn.ModuleList()
        # print(n_layers)
        # print(n_blocks)
        # exit()
        self.n_blocks = n_blocks
        for i in range(n_blocks):
            self.incp_blocks.append(
                InceptionBlock(
                    device,
                    in_dim=hidden_dim,
                    hidden_dim=hidden_dim,
                    out_dim=hidden_dim,
                    num_heads=None,
                    n_layers=[2,1,0],
                    dropout=0,
                    combine_type=combine_type
                ).to(device)
            )
        self.GCN2 = GCN(
                device=device,
                in_dim=hidden_dim,
                hidden_dim=hidden_dim,
                out_dim=out_dim,
                num_heads=None,
                n_layers=0,
                dropout=dropout,
                aggregation_type=aggregation_type,
            ).to(device)

    def forward(self,blocks,features):
        #print(blocks)
        h = features
        #print(h.shape)
        h= self.GCN1([blocks[0]],h)
        #print(h.shape)
        for i in range(self.n_blocks):
            #print(i)
            h = self.incp_blocks[i](blocks[1+3*i:4+3*i],h)
        h = self.GCN2([blocks[-1]],h)
        return h


class RelGCN(nn.Module):
    def __init__(
        self,
        label,
        include,
        device,
        in_dim,
        hidden_dim,
        out_dim,
        num_heads,
        n_layers,
        dropout,
        combine_type=None,
        activation=th.nn.functional.relu,
        aggregation_type='mean',
    ):
        super(RelGCN, self).__init__()
        #print(get_options().attn_type)
        self.attn_e = Parameter(th.FloatTensor(th.ones(size=(2, 1))))
        #self.attn_n = Parameter(th.FloatTensor(size=(get_options().in_dim, get_options().in_dim)))
        self.attn_n = Parameter(th.FloatTensor(th.ones(size=(get_options().in_dim, get_options().in_dim))))
        #gain = nn.init.calculate_gain('relu')
        #nn.init.xavier_normal_(self.attn_e, gain=gain)
        #nn.init.xavier_normal_(self.attn_n, gain=gain)

        self.linear = nn.Linear(2,1)
        #nn.init.normal_(self.attn, mean=1, std=1)
        self.in_dim = in_dim
        self.hidden_dim = hidden_dim
        self.out_dim = out_dim
        self.n_layers = n_layers
        self.dropout = nn.Dropout(p=dropout)
        self.layers = nn.ModuleList()

        # hidden layers
        for i in range(n_layers):
            self.layers.append(
                MyRelConv(
                    device,
                    in_dim,
                    hidden_dim,
                    attn_n=self.attn_n,
                    attn_e=self.attn_e,
                    linear=self.linear,
                    include = include,
                    attn_drop = get_options().attn_drop,
                    attn_type=get_options().attn_type,
                    aggregator_type=aggregation_type,
                    activation=activation,
                )
            )
            in_dim = hidden_dim
        # output layer
        self.layers.append(MyRelConv(device,in_dim, out_dim, attn_n=self.attn_n,attn_e=self.attn_e,linear=self.linear,
                                     attn_type=get_options().attn_type,attn_drop = get_options().attn_drop,aggregator_type=aggregation_type))

    def forward(self, blocks, features):
        h = features
        for i in range(self.n_layers+1):
            if i != 0:
                h = self.dropout(h)
            h = self.layers[i](blocks[i], h)

        return h.squeeze(1)


class Classifier(nn.Module):
    def __init__(
        self, GCN,out_dim,n_fcn,activation=th.relu,dropout=0.5,
    ):
        super(Classifier, self).__init__()
        self.activation = activation
        self.GCN = GCN
        self.dropout = nn.Dropout(p=dropout)
        #self.layers1 = self.GCN1.layers
        #self.layers2 = self.GCN2.layers
        self.layers2 = nn.ModuleList()
        self.n_fcn = n_fcn
        #self.alpha = tf.Variable(initial_value=0.0,trainable=True)  # 有问�?

        hidden_dim = self.GCN.out_dim
        for i in range(n_fcn-1):
            self.layers2.append(nn.Linear(hidden_dim, int(hidden_dim/2)))
            hidden_dim = int(hidden_dim / 2)
        self.layers2.append(nn.Linear(hidden_dim, out_dim))
        #print(self.layers)
    def forward(self, blocks, features):
        h = self.GCN(blocks, features)
        # print(h.shape)
        for i in range(self.n_fcn - 1):
            h = self.dropout(h)
            h = self.layers2[i](self.activation(h))
        # print(h.shape)
        h = self.layers2[-1](h)
        # print("aa")
        return h

class Inception_BiClassifier(nn.Module):
    def __init__(
        self, inception1,inception2, out_dim,n_fcn,activation=th.nn.functional.relu,dropout=0.5,
    ):
        super(Inception_BiClassifier, self).__init__()
        self.activation = activation
        self.inception1 = inception1
        self.inception2 = inception2

        self.dropout = nn.Dropout(p=dropout)
        #self.layers1 = self.GCN1.layers
        #self.layers2 = self.GCN2.layers
        self.layers3 = nn.ModuleList()
        self.n_fcn = n_fcn
        #self.alpha = tf.Variable(initial_value=0.0,trainable=True)  # 有问�?

        hidden_dim = 2*self.inception1.out_dim
        for i in range(n_fcn-1):
            self.layers3.append(nn.Linear(hidden_dim, int(hidden_dim/2)))
            hidden_dim = int(hidden_dim / 2)
        self.layers3.append(nn.Linear(hidden_dim, out_dim))
        #print(self.layers)
    def forward(self, in_blocks, in_features,out_blocks,out_features):
        #h = in_features
        #rh = out_features
        hi = self.inception1(in_blocks,in_features)
        ho = self.inception2(out_blocks,out_features)

        h = th.cat((hi,ho),dim=1)

        for i in range(self.n_fcn-1):
            h = self.dropout(h)
            h = self.layers3[i](self.activation(h))
        #print(h.shape)
        h = self.layers3[-1](h)
        #print("aa")
        return h

class BagClassifier(nn.Module):
    def __init__(
        self, GCN1,GCN2, out_dim,n_fcn,combine_type='concat',activation=th.relu,dropout=0.5,
    ):
        super(BagClassifier, self).__init__()
        self.activation = activation
        self.GCN1 = GCN1
        self.GCN2 = GCN2
        self.dropout = nn.Dropout(p=dropout)
        #self.layers1 = self.GCN1.layers
        #self.layers2 = self.GCN2.layers
        self.layers3 = nn.ModuleList()
        self.n_fcn = n_fcn
        #self.alpha = tf.Variable(initial_value=0.0,trainable=True)  # 有问�?
        self.combine_type = combine_type
        #if type(self.GCN1).__name__ == 'GNN_1l':
        if self.GCN1 is None or self.combine_type !='concat':
            hidden_dim = self.GCN2.out_dim
        elif self.GCN2 is None:
            hidden_dim = self.GCN1.out_dim
        else:
            hidden_dim = self.GCN1.out_dim+self.GCN2.out_dim

        for i in range(n_fcn-1):
            self.layers3.append(nn.Linear(hidden_dim, int(hidden_dim/2)))
            hidden_dim = int(hidden_dim / 2)
        self.layers3.append(nn.Linear(hidden_dim, out_dim))
        #print(self.layers)
    def forward(self, func_blocks, func_features,topo_blocks,topo_features):
        func_h = self.GCN1(func_blocks,func_features)
        topo_h = self.GCN2(topo_blocks,topo_features)
        if self.combine_type == 'concat':
            h = th.cat((func_h, topop_h), 1)
        elif self.combine_type == 'sum':
            h = func_h + topo_h
        elif self.combine_type == 'max':
            h = th.max(func_h, topo_h)
        else:
            print('please select a proper bi-combine function')
            assert False

        #print(h.shape)
        for i in range(self.n_fcn-1):
            #h = self.dropout(self.activation(self.layers3[i](h)))
            h = self.dropout(h)
            h = self.layers3[i](self.activation(h))
        #print(h.shape)
        if self.n_fcn >= 1:
            h = self.layers3[-1](h).squeeze(-1)
        #print("aa")
        return h


class BiClassifier(nn.Module):
    def __init__(
        self, GCN1,GCN2, out_dim,n_fcn,combine_type='concat',activation=th.relu,dropout=0.5,
    ):
        super(BiClassifier, self).__init__()
        self.activation = activation
        self.GCN1 = GCN1
        self.GCN2 = GCN2
        self.dropout = nn.Dropout(p=dropout)
        #self.layers1 = self.GCN1.layers
        #self.layers2 = self.GCN2.layers
        self.layers3 = nn.ModuleList()
        self.n_fcn = n_fcn
        #self.alpha = tf.Variable(initial_value=0.0,trainable=True)  # 有问�?
        self.combine_type = combine_type
        #if type(self.GCN1).__name__ == 'GNN_1l':
        if self.GCN1 is None or self.combine_type !='concat':
            hidden_dim = self.GCN2.out_dim
        elif self.GCN2 is None:
            hidden_dim = self.GCN1.out_dim
        else:
            hidden_dim = self.GCN1.out_dim+self.GCN2.out_dim

        for i in range(n_fcn-1):
            self.layers3.append(nn.Linear(hidden_dim, int(hidden_dim/2)))
            hidden_dim = int(hidden_dim / 2)
        self.layers3.append(nn.Linear(hidden_dim, out_dim))
        #print(self.layers)
    def forward(self, in_blocks, in_features,out_blocks,out_features):
        if self.GCN1 is None:
            #start = time()
            h = self.GCN2(out_blocks,out_features)
            #print("GCN2 time:", time() - start)
        elif self.GCN2 is None:
            h = self.GCN1(in_blocks,in_features)
        else:
            h = self.GCN1(in_blocks, in_features)
            #start = time()
            rh = self.GCN2(out_blocks, out_features)
            #print("GCN2 time:",time()-start)
            if self.combine_type == 'concat':
                h = th.cat((h, rh), 1)
            elif self.combine_type == 'sum':
                h = h + rh
            elif self.combine_type == 'max':
                h = th.max(h,rh)
            else:
                print('please select a proper bi-combine function')
                assert False
        #print(h.shape)
        for i in range(self.n_fcn-1):
            #h = self.dropout(self.activation(self.layers3[i](h)))
            h = self.dropout(h)
            h = self.layers3[i](self.activation(h))
        #print(h.shape)
        if self.n_fcn >= 1:
            h = self.layers3[-1](h).squeeze(-1)
        #print("aa")
        return h

class MLP(nn.Module):
    def __init__(self,in_dim,out_dim,nlayers):
        self.in_dim = in_dim
        self.out_dim = out_dim
        self.nlayers = nlayers
        self.layers= nn.Sequential()
        dim1 = in_dim
        for i in range(nlayers-1):
            self.layers.add_module('dropout_{}'.format(i+1),self.dropout)
            self.layers.add_module('activation_{}'.format(i+1), self.activation)
            self.layers.add_module('linear_{}'.format(i+1),nn.Linear(dim1, int(dim1/2)))
            dim1 = int(dim1 / 2)
        self.mlp_label.add_module('linear_{}'.format(nlayers),nn.Linear(dim1, out_dim))
    def foward(self,embedding):
        return self.layers(embedding).squeeze(-1)
class BiClassifier_pos(nn.Module):
    def __init__(
        self, GCN1,GCN2, out_dim,n_fcn,combine_type='concat',activation=nn.ReLU(),dropout=0.5,
    ):
        super(BiClassifier_pos, self).__init__()
        self.activation = activation
        self.GCN1 = GCN1
        self.GCN2 = GCN2
        self.dropout = nn.Dropout(p=dropout)
        #self.layers1 = self.GCN1.layers
        #self.layers2 = self.GCN2.layers
        self.layers3 = nn.ModuleList()
        self.mlp_label = nn.Sequential()
        self.mlp_position = nn.Sequential()
        self.n_fcn = n_fcn
        #self.alpha = tf.Variable(initial_value=0.0,trainable=True)  # 有问�?
        self.combine_type = combine_type
        #if type(self.GCN1).__name__ == 'GNN_1l':

        if self.GCN1 is None or self.combine_type !='concat':
            hidden_dim = self.GCN2.out_dim
        elif self.GCN2 is None:
            hidden_dim = self.GCN1.out_dim
        else:
            hidden_dim = 2*self.GCN1.out_dim

        dim1,dim2 = hidden_dim,hidden_dim
        for i in range(n_fcn-1):
            self.mlp_label.add_module('dropout_{}'.format(i+1),self.dropout)
            self.mlp_label.add_module('activation_{}'.format(i+1), self.activation)
            self.mlp_label.add_module('linear_{}'.format(i+1),nn.Linear(dim1, int(dim1/2)))
            dim1 = int(dim1 / 2)
        self.mlp_label.add_module('linear_{}'.format(n_fcn),nn.Linear(dim1, out_dim))

        for i in range(n_fcn-1):
            self.mlp_position.add_module('dropout_{}'.format(i+1),self.dropout)
            self.mlp_position.add_module('activation_{}'.format(i+1), self.activation)
            self.mlp_position.add_module('linear_{}'.format(i+1),nn.Linear(dim2, int(dim2/2)))
            dim2 = int(dim2 / 2)
        self.mlp_position.add_module('linear_{}'.format(n_fcn),nn.Linear(dim2, 1))
        #print(self.layers)
    def forward(self, in_blocks, in_features,out_blocks,out_features):
        if self.GCN1 is None:
            #start = time()
            h = self.GCN2(out_blocks,out_features)
            #print("GCN2 time:", time() - start)
        elif self.GCN2 is None:
            h = self.GCN1(in_blocks,in_features)
        else:
            h = self.GCN1(in_blocks, in_features)
            #start = time()
            rh = self.GCN2(out_blocks, out_features)
            #print("GCN2 time:",time()-start)
            if self.combine_type == 'concat':
                h = th.cat((h, rh), 1)
            elif self.combine_type == 'sum':
                h = h + rh
            elif self.combine_type == 'max':
                h = th.max(h,rh)
            else:
                print('please select a proper bi-combine function')
                assert False
        #print(h.shape)

        label = self.mlp_label(h).squeeze(-1)
        position = self.mlp_position(h).squeeze(-1)
        # label,position= h,h
        # for i in range(self.n_fcn-1):
        #     label = self.dropout(label)
        #     label = self.mlp_label[i](self.activation(label))
        # #print(h.shape)
        # if self.n_fcn >= 1:
        #     h = self.mlp_label[-1](h).squeeze(-1)
        #print("aa")

        return (label,position)
class BiClassifier_incp(nn.Module):
    def __init__(
        self, GCN1,GCN2, out_dim,n_fcn,combine_type='concat',activation=th.relu,dropout=0.5,
    ):
        super(BiClassifier, self).__init__()
        self.activation = activation
        self.GCN1 = GCN1
        self.GCN2 = GCN2
        self.dropout = nn.Dropout(p=dropout)
        #self.layers1 = self.GCN1.layers
        #self.layers2 = self.GCN2.layers
        self.layers3 = nn.ModuleList()
        self.n_fcn = n_fcn
        #self.alpha = tf.Variable(initial_value=0.0,trainable=True)  # 有问�?
        self.combine_type = combine_type
        #if type(self.GCN1).__name__ == 'GNN_1l':

        if self.GCN1 is None or self.combine_type !='concat':
            hidden_dim = self.GCN2.out_dim
        elif self.GCN2 is None:
            hidden_dim = self.GCN1.out_dim
        else:
            hidden_dim = 2*self.GCN1.out_dim
        for i in range(n_fcn-1):
            self.layers3.append(nn.Linear(hidden_dim, int(hidden_dim/2)))
            hidden_dim = int(hidden_dim / 2)
        self.layers3.append(nn.Linear(hidden_dim, out_dim))
        #print(self.layers)
    def forward(self, in_blocks,out_blocks):
        if self.GCN1 is None:
            #start = time()
            in_embedding = self.GCN2(out_blocks,out_blocks[0].srcdata["ntype"])
            #print("GCN2 time:", time() - start)
        elif self.GCN2 is None:
            in_embedding = self.GCN1(in_blocks,in_blocks[0].srcdata["ntype"])
        else:

            in_embedding = self.GCN1(in_blocks, in_blocks[0].srcdata["ntype"])
            #start = time()
            predicts = []
            for i in range(len(out_blocks)):
                out_embedding = self.GCN2(out_blocks[i:],out_blocks[i].srcdata["ntype"])

                if self.combine_type == 'concat':
                    final_embedding = th.cat((in_embedding, out_embedding), 1)
                elif self.combine_type == 'sum':
                    final_embedding= in_embedding + out_embedding
                elif self.combine_type == 'max':
                    final_embedding = th.max(in_embedding,out_embedding)
                else:
                    print('please select a proper bi-combine function')
                    assert False
        #print(h.shape)
            h = final_embedding
            for i in range(self.n_fcn-1):
                h = self.dropout(h)
                h = self.layers3[i](self.activation(h))
            #print(h.shape)
            if self.n_fcn >= 1:
                h = self.layers3[-1](h).squeeze(-1)
            predicts.append(h)
        #print("aa")
        return predicts

class WBClassifier(nn.Module):
    def __init__(
        self, GCN1,GCN2, out_dim,n_fcn,combine_type='concat',activation=th.nn.functional.relu,dropout=0.5,
    ):
        super(WBClassifier, self).__init__()
        self.activation = activation
        self.GCN1 = GCN1
        self.GCN2 = GCN2
        self.dropout = nn.Dropout(p=dropout)
        # self.layers1 = self.GCN1.layers
        # self.layers2 = self.GCN2.layers
        self.layers3 = nn.ModuleList()
        self.n_fcn = n_fcn
        # self.alpha = tf.Variable(initial_value=0.0,trainable=True)  # 有问�?
        self.fc_combine = nn.Linear(get_options().in_dim,2)
        # gain = nn.init.calculate_gain('relu')
        # nn.init.xavier_uniform_(self.fc_combine.weight, gain=gain)
        self.fc_combine.weight = Parameter(th.FloatTensor(th.ones(size=(2, get_options().in_dim))))
        self.combine_type = combine_type
        if self.combine_type == 'concat':
            hidden_dim = 2 * self.GCN1.out_dim
        elif self.combine_type == 'add':
            hidden_dim = self.GCN1.out_dim
        else:
            print("please choose a valid combine type !")
            exit()
        for i in range(n_fcn-1):
            self.layers3.append(nn.Linear(hidden_dim, int(hidden_dim/2)))
            hidden_dim = int(hidden_dim / 2)
        self.layers3.append(nn.Linear(hidden_dim, out_dim))
        # print(self.layers)
    def forward(self, in_blocks, in_features,out_blocks,out_features):
        h = self.GCN1(in_blocks,in_features)
        rh = self.GCN2(out_blocks,out_features)
        weights = self.fc_combine(in_blocks[-1].dstdata['ntype'])
        # h = weights[:,0].reshape((-1,1))*h
        # rh = weights[:,1].reshape(-1,1)*rh
        #print(in_blocks[-1].dstdata['ntype'])
        if self.combine_type == 'concat':
            h = th.cat((weights[:,0].reshape((-1,1))*h,weights[:,1].reshape(-1,1)*rh),1)
        elif self.combine_type == 'add':
            h = weights[:,0].reshape((-1,1))*h+weights[:,1].reshape(-1,1)*rh
        else:
            exit()
        #print(h.shape)
        for i in range(self.n_fcn-1):
            h = self.dropout(h)
            h = self.layers3[i](self.activation(h))
        #print(h.shape)
        h = self.layers3[-1](h)
        #print("aa")
        return h