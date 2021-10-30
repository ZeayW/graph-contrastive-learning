from dataset_dc import Dataset_dc
from options import get_options
from model import *
import dgl
import pickle
import numpy as np
import os
from MyDataLoader_ud import *
from time import time
from random import shuffle
#import torch as th

def load_model(device,options):

    model_dir = options.model_saving_dir
    if os.path.exists(os.path.join(model_dir, 'model.pkl')) is False:
        return None,None


    with open(os.path.join(model_dir,'model.pkl'), 'rb') as f:
        #print(f)
        param, model1 = pickle.load(f)
        #print(classifier)
        param.model_saving_dir = options.model_saving_dir
        model1 = model1.to(device)
        if options.change_lr:
            param.learning_rate = options.learning_rate
        if options.change_alpha:
            param.alpha = options.alpha
    return param,model1
def check_sim(embeddings, neg_embeddings,boom_embeddings):
    total_pos_sim, total_neg_sim = 0, 0
    total_cross_sim = 0
    num = boom_embeddings.shape[0]
    avg_cross_sim = 0
    for i in range(num):
        pos_sim = (th.sum(th.cosine_similarity(boom_embeddings[i], embeddings, dim=-1))) / len(embeddings)
        neg_sim = (th.sum(th.cosine_similarity(boom_embeddings[i], neg_embeddings, dim=-1))) / len(neg_embeddings)
        # distance += d
        # if boom_embeddings is not None:
        #     cross_sim =  (th.sum(th.cosine_similarity(embeddings[i], boom_embeddings, dim=-1))) / len(boom_embeddings)
        #     total_cross_sim += cross_sim
        total_pos_sim += pos_sim
        total_neg_sim += neg_sim
        # print('sample {}, pos sim:{}, neg sim{}'.format(i,sim,neg_sim))
    avg_pos_sim = total_pos_sim / len(boom_embeddings)
    avg_neg_sim = total_neg_sim / len(boom_embeddings)
    # print('avg pos sim :{:.4f}, avg neg sim:{:.4f}'.format(avg_pos_sim,
    #                                                        avg_neg_sim))
    print('cross pos sim :{:.4f}, cross neg sim:{:.4f}'.format(avg_pos_sim,
                                                           avg_neg_sim))
    return avg_pos_sim,avg_cross_sim,avg_neg_sim
def validate_sim(val_g, boom_embeddings,sampler, device, model):
    res_sim = []
    val_nodes = th.tensor(range(val_g.number_of_nodes()))
    pos_mask = (val_g.ndata['label_o'] == 1).squeeze(1)
    neg_mask = (val_g.ndata['label_o'] == 0).squeeze(1)

    loader = MyNodeDataLoader(
        True,
        val_g,
        val_nodes,
        sampler,
        bs=val_g.num_nodes(),
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
        # print(sorted(pos_embeddings.cpu().detach().numpy().tolist()))
        # for ni,embed in enumerate(sorted(pos_embeddings.cpu().detach().numpy().tolist())):
        #     print(ni,embed[:7])

        # print(len(pos_embeddings))
        # exit()
        neg_embeddings = embeddings[neg_mask]
        # print(embeddings)
        # print('-----------------------------------------------------------------------------------------\n\n')
        pos_sim, cross_sim, neg_sim = check_sim(pos_embeddings, neg_embeddings, boom_embeddings)
        res_sim.append((pos_sim, cross_sim, neg_sim))
        # print('-----------------------------------------------------------------------------------------\n\n')

    return res_sim


def unlabel_low(g,unlabel_threshold):
    mask_low = g.ndata['position'] <= unlabel_threshold
    g.ndata['label_o'][mask_low] = 0

def load_valdata(val_data_file, options):
    with open(val_data_file, 'rb') as f:
        val_g = pickle.load(f)
    unlabel_low(val_g, 1)
    label_name = 'label_o'
    val_g.ndata['label_o'][val_g.ndata['label_o'].squeeze(-1) == 2] = 1
    val_g.ndata['f_input'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
    val_g.ndata['temp'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim), dtype=th.float)

    val_g.ndata['ntype2'] = th.argmax(val_g.ndata['ntype'], dim=1).squeeze(-1)
    val_graphs = dgl.unbatch(val_g)
    return val_graphs



options = get_options()
th.multiprocessing.set_sharing_strategy('file_system')
device = th.device("cuda:"+str(options.gpu) if th.cuda.is_available() else "cpu")

# data_path = options.datapath
# print(data_path)
# train_data_file = os.path.join(data_path,'boom2.pkl')
# val_data_file = os.path.join(data_path,'rocket2.pkl')
    #split_dir = 'splits/rokcet'

label_name = 'label_o'

print(options)
options, model1 = load_model(device, options)

if model1 is None:
    print("No model, please prepocess first , or choose a pretrain model")
    exit()
print(model1)

in_nlayers = options.in_nlayers if isinstance(options.in_nlayers,int) else options.in_nlayers[0]
val_data_file = os.path.join('../data/simplify9', 'rocket2.pkl')
val_graphs = load_valdata(val_data_file, options)
val_sampler = Sampler([None] * (in_nlayers + 1), include_dst_in_src=options.include)

val_data_file1 = os.path.join('../data/simplify9', 'boom2.pkl')
val_graphs1 = load_valdata(val_data_file1,options)
val_graph1 = dgl.batch(val_graphs1)
val1_pos_nodes = th.tensor(range(val_graph1.number_of_nodes()))[val_graph1.ndata['label_o'].squeeze(1)>=1]
val_dataloader1 = MyNodeDataLoader(
                    True,
                    val_graph1,
                    val1_pos_nodes,
                    val_sampler,
                    bs=len(val1_pos_nodes),
                    batch_size=len(val1_pos_nodes),
                    shuffle=False,
                    drop_last=False,
                )

boom_embeddings = None
for _,_, blocks in val_dataloader1:
    blocks = [b.to(device) for b in blocks]
    boom_embeddings = model1(blocks,blocks[0].srcdata['f_input'])

for val_g in val_graphs:
    res_sims = validate_sim(val_g,boom_embeddings, val_sampler, device, model1)