
import matplotlib.pyplot as plt

from dgl.subgraph import *
import torch
import dgl
from dgl.dataloading.dataloader import BlockSampler
from dgl import sampling, subgraph, DGLError
from dgl import transform

import inspect
from torch.utils.data import DataLoader
from dgl.dataloading.dataloader import NodeCollator,_tensor_or_dict_to_numpy,_locate_eids_to_exclude,assign_block_eids
from dgl.dataloading.pytorch.__init__ import _pop_blocks_storage,_restore_blocks_storage
from dgl.base import NID, EID
from dgl import backend as F
from dgl import utils
from torch.utils.data.sampler import Sampler
from torch._six import int_classes as _int_classes
from collections.abc import Mapping
from random import randint,shuffle
from typing import Iterator, Optional, Sequence, List, TypeVar, Generic, Sized
from codes.options import get_options


class Sampler(BlockSampler):

    def __init__(self, fanouts, include_dst_in_src=True,replace=False, return_eids=False):
        super().__init__(len(fanouts), return_eids)
        self.fanouts = fanouts
        self.replace = replace
        self.include_dst_in_src = include_dst_in_src
    def sample_frontier(self, block_id, g, seed_nodes):
        fanout = self.fanouts[block_id]

        if fanout is None:
            frontier = subgraph.in_subgraph(g, seed_nodes)
        else:
            frontier = sampling.sample_neighbors(g, seed_nodes, fanout, replace=self.replace)
        return frontier

    def sample_blocks(self, g, seed_nodes, exclude_eids=None):

        # neighbours = g.ndata['neigh'][seed_nodes]

        blocks = []
        exclude_eids = (
            _tensor_or_dict_to_numpy(exclude_eids) if exclude_eids is not None else None)
        # print(exclude_eids)
        for block_id in reversed(range(self.num_layers)):
            frontier = self.sample_frontier(block_id, g, seed_nodes)

            # Removing edges from the frontier for link prediction training falls
            # into the category of frontier postprocessing
            if exclude_eids is not None:
                parent_eids = frontier.edata[EID]
                parent_eids_np = _tensor_or_dict_to_numpy(parent_eids)
                located_eids = _locate_eids_to_exclude(parent_eids_np, exclude_eids)
                if not isinstance(located_eids, Mapping):

                    if len(located_eids) > 0:
                        frontier = transform.remove_edges(frontier, located_eids)
                        frontier.edata[EID] = F.gather_row(parent_eids, frontier.edata[EID])
                else:

                    new_eids = parent_eids.copy()
                    for k, v in located_eids.items():
                        if len(v) > 0:
                            frontier = transform.remove_edges(frontier, v, etype=k)
                            new_eids[k] = F.gather_row(parent_eids[k], frontier.edges[k].data[EID])
                    frontier.edata[EID] = new_eids

            block = transform.to_block(frontier, seed_nodes, include_dst_in_src=self.include_dst_in_src)

            # if block_id == self.num_layers-1:

            # print(block)

            if self.return_eids:
                assign_block_eids(block, frontier)

            seed_nodes = {ntype: block.srcnodes[ntype].data[NID] for ntype in block.srctypes}

            # Pre-generate CSR format so that it can be used in training directly
            block.create_formats_()
            blocks.insert(0, block)
        return blocks

class ReverseSampler(BlockSampler):

    def __init__(self, fanouts,include_dst_in_src, replace=False, return_eids=False):
        super().__init__(len(fanouts), return_eids)
        self.fanouts = fanouts
        self.replace = replace
        self.include_dst_in_src = include_dst_in_src

    def sample_frontier(self, block_id, g, seed_nodes):
        fanout = self.fanouts[block_id]

        if fanout is None:
            frontier = subgraph.out_subgraph(g, seed_nodes)
            # r_frontier.ndata["feat"] = frontier.ndata["feat"]
            # r_frontier.ndata["label"] = frontier.ndata["label"]
            # r_frontier.edata['r'] = frontier.edata['r']
        else:
            frontier = sampling.sample_neighbors(g, seed_nodes, fanout, replace=self.replace)
        r_frontier = dgl.graph((frontier.edges()[-1], frontier.edges()[0]), num_nodes=frontier.num_nodes())
        print(frontier.num_nodes())
        print(r_frontier.num_nodes())
        for key, value in frontier.ndata.items():
            # print(key,value)
            r_frontier.ndata[key] = value
        for key, value in frontier.edata.items():
            # print(key,value)
            r_frontier.edata[key] = value
        block = transform.to_block(r_frontier, seed_nodes, include_dst_in_src=self.include_dst_in_src)

        return r_frontier

    def sample_blocks(self, g, seed_nodes, exclude_eids=None):

        #neighbours = g.ndata['neigh'][seed_nodes]

        blocks = []
        exclude_eids = (
            _tensor_or_dict_to_numpy(exclude_eids) if exclude_eids is not None else None)
        #print(exclude_eids)
        for block_id in reversed(range(self.num_layers)):
            frontier = self.sample_frontier(block_id, g, seed_nodes)

            # Removing edges from the frontier for link prediction training falls
            # into the category of frontier postprocessing
            if exclude_eids is not None:
                parent_eids = frontier.edata[EID]
                parent_eids_np = _tensor_or_dict_to_numpy(parent_eids)
                located_eids = _locate_eids_to_exclude(parent_eids_np, exclude_eids)
                if not isinstance(located_eids, Mapping):

                    if len(located_eids) > 0:
                        frontier = transform.remove_edges(frontier, located_eids)
                        frontier.edata[EID] = F.gather_row(parent_eids, frontier.edata[EID])
                else:

                    new_eids = parent_eids.copy()
                    for k, v in located_eids.items():
                        if len(v) > 0:
                            frontier = transform.remove_edges(frontier, v, etype=k)
                            new_eids[k] = F.gather_row(parent_eids[k], frontier.edges[k].data[EID])
                    frontier.edata[EID] = new_eids

            block = transform.to_block(frontier, seed_nodes,include_dst_in_src=self.include_dst_in_src)
            #if block_id == self.num_layers-1:
            
               #print(block)

            if self.return_eids:
                assign_block_eids(block, frontier)


            seed_nodes = {ntype: block.srcnodes[ntype].data[NID] for ntype in block.srctypes}

            # Pre-generate CSR format so that it can be used in training directly
            block.create_formats_()
            blocks.insert(0, block)
        return blocks
        
class MyNodeCollator(NodeCollator):

    def __init__(self,predict,g,ug, nids,func_block_sampler,topo_block_sampler):
        self.nids = nids
        self.func_block_sampler = func_block_sampler
        self.topo_block_sampler = topo_block_sampler
        self._dataset = nids
        self.g = g
        self.ug = ug
        self.predict = predict
    def collate(self, items):
        if isinstance(items[0], tuple):
            # returns a list of pairs: group them by node types into a dict
            items = utils.group_as_dict(items)

        # TODO(BarclayII) Because DistGraph doesn't have idtype and device implemented,
        # this function does not work.  I'm again skipping this step as a workaround.
        # We need to fix this.

        if isinstance(items, dict):
            items = utils.prepare_tensor_dict(self.g, items, 'items')
        else:
            items = utils.prepare_tensor(self.g, items, 'items')

        if self.predict is False:
            if len(set(items.numpy().tolist())) != get_options().batch_size:
               items = set(items.numpy().tolist())
               while len(items) !=get_options().batch_size:
                  items.add(randint(0,self.g.num_nodes()))
               items = torch.tensor(list(items))
        func_blocks = self.func_block_sampler.sample_blocks(self.g, items)
        topo_blocks =self.topo_block_sampler.sample_blocks(self.rg, items)

        #print(blocks[-1].dstnodes())
        i = 0
        #while blocks[-1].number_of_dst_nodes() !=512:
           #i = i+1
           #items = list(items)
           #shuffle(items)
           #items.pop()
           #items.append(randint(0,self.g.num_nodes()))
           #items = torch.tensor(items)
           #blocks = self.block_sampler.sample_blocks(self.g, items)
           #reverse_blocks =self.reverse_block_sampler.sample_blocks(self.g, items)
           #print(i)
           #print(blocks[-1].dstdata['label'] == reverse_blocks[-1].dstdata['label'])
           #print(blocks[-1].number_of_dst_nodes()," ",reverse_blocks[-1].number_of_dst_nodes())
        #print(blocks[-1],reverse_blocks[-1])

        _pop_blocks_storage(func_blocks, self.g)
        _pop_blocks_storage(topo_blocks, self.rg)
        return func_blocks,topo_blocks

class MyNodeDataLoaderIter:
    def __init__(self, node_dataloader):
        self.node_dataloader = node_dataloader
        self.iter_ = iter(node_dataloader.dataloader)

    def __next__(self):
        central_nodes, input_nodes,blocks, reverse_input_nodes,reverse_blocks = next(self.iter_)
        _restore_blocks_storage(blocks, self.node_dataloader.collator.g)
        _restore_blocks_storage(reverse_blocks, self.node_dataloader.collator.g)
        return central_nodes, input_nodes,blocks, reverse_input_nodes,reverse_blocks


class MyNodeDataLoader:

    collator_arglist = inspect.getfullargspec(NodeCollator).args

    def __init__(self, predict,g, ug,nids, block_sampler,undirected_block_sampler, **kwargs):
        collator_kwargs = {}
        dataloader_kwargs = {}
        for k, v in kwargs.items():
            if k in self.collator_arglist:
                collator_kwargs[k] = v
            else:
                dataloader_kwargs[k] = v


        self.collator = MyNodeCollator(predict,g, ug,nids, block_sampler,undirected_block_sampler, **collator_kwargs)

        self.dataloader = DataLoader(self.collator.dataset,
                                    collate_fn=self.collator.collate,
                                    **dataloader_kwargs)

    def __iter__(self):
        """Return the iterator of the data loader."""
        return MyNodeDataLoaderIter(self)

    def __len__(self):
        """Return the number of batches of the data loader."""
        return len(self.dataloader)


