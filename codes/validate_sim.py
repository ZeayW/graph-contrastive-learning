
from model import *
from options import get_options
import dgl
import pickle
import numpy as np
import os
from MyDataLoader_ud import *
from time import time
from random import shuffle
import torch as th

def load_model(device,options):

    model_dir = options.model_saving_dir
    if os.path.exists(os.path.join(model_dir, 'model.pkl')) is False:
        return None,None


    with open(os.path.join(model_dir,'model.pkl'), 'rb') as f:
        #print(f)
        param, model,mlp = pickle.load(f)
        #print(classifier)
        param.model_saving_dir = options.model_saving_dir
        model = model.to(device)
        if options.change_lr:
            param.learning_rate = options.learning_rate
        if options.change_alpha:
            param.alpha = options.alpha
    return param,model,mlp
def validate_sim(val_graphs,sampler,device,model):
    print(len(val_graphs))
    for val_g in val_graphs:
        val_nodes = th.tensor(range(val_g.number_of_nodes()))
        pos_mask = (val_g.ndata['label_o'] == 1).squeeze(1)
        neg_mask = (val_g.ndata['label_o'] == 0).squeeze(1)

        loader = MyNodeDataLoader(
            True,
            val_g,
            val_nodes,
            sampler,
            batch_size=val_g.num_nodes(),
            shuffle=False,
            drop_last=False,
        )
        for ni, (central_nodes, input_nodes, blocks) in enumerate(loader):
            blocks = [b.to(device) for b in blocks]
            input_features = blocks[0].srcdata["f_input"]
            output_labels = blocks[-1].dstdata['label_o'].squeeze(1)
            embeddings = model(blocks, input_features)

            pos_embeddings = embeddings[pos_mask]
            #print(sorted(pos_embeddings.cpu().detach().numpy().tolist()))
            # for ni,embed in enumerate(sorted(pos_embeddings.cpu().detach().numpy().tolist())):
            #     print(ni,embed[:7])

            #print(len(pos_embeddings))
            #exit()
            neg_embeddings = embeddings[neg_mask]
            #print(embeddings)
            #print('-----------------------------------------------------------------------------------------\n\n')
            check_sim(pos_embeddings,neg_embeddings)
            #print('-----------------------------------------------------------------------------------------\n\n')

def check_sim(embeddings,neg_embeddings):
    total_pos_sim ,total_neg_sim = 0,0
    num = embeddings.shape[0]
    print(num)
    for i in range(num):
        sim = (th.sum(th.cosine_similarity(embeddings[i],embeddings,dim=-1))-1)/(num-1)
        neg_sim = (th.sum(th.cosine_similarity(embeddings[i], neg_embeddings, dim=-1))) / len(neg_embeddings)
        #distance += d
        total_pos_sim += sim
        total_neg_sim += neg_sim
        #print('sample {}, pos sim:{}, neg sim{}'.format(i,sim,neg_sim))
    print('avg pos sim :{}, avg neg sim:{}'.format(total_pos_sim/len(embeddings),total_neg_sim/len(embeddings)))


def unlabel_low(g,unlabel_threshold):
    mask_low = g.ndata['position'] <= unlabel_threshold
    g.ndata['label_o'][mask_low] = 0


options = get_options()
th.multiprocessing.set_sharing_strategy('file_system')
device = th.device("cuda:"+str(options.gpu) if th.cuda.is_available() else "cpu")

data_path = options.datapath
print(data_path)
train_data_file = os.path.join(data_path,'boom2.pkl')
val_data_file = os.path.join(data_path,'rocket2.pkl')
    #split_dir = 'splits/rokcet'

label_name = 'label_o'

print(options)
options, model,mlp = load_model(device, options)

if model is None:
    print("No model, please prepocess first , or choose a pretrain model")
    exit()
print(model)
mlp = mlp.to(device)
print(mlp)
in_nlayers = options.in_nlayers if isinstance(options.in_nlayers,int) else options.in_nlayers[0]
with open(val_data_file, 'rb') as f:
    val_g = pickle.load(f)
    val_graphs = dgl.unbatch(val_g)
    val_graphs.pop(1)
    val_g = dgl.batch(val_graphs)
unlabel_low(val_g, 1)
label_name = 'label_o'
val_g.ndata['label_o'][val_g.ndata['label_o'].squeeze(-1) == 2] = 1
val_g.ndata['f_input'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
val_g.ndata['temp'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim), dtype=th.float)

val_g.ndata['ntype2'] = th.argmax(val_g.ndata['ntype'], dim=1).squeeze(-1)
val_graphs = dgl.unbatch(val_g)
sampler = Sampler([None] * (in_nlayers + 1), include_dst_in_src=options.include)
validate_sim(val_graphs,sampler,device,model)