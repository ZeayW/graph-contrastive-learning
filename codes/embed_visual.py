from dataset_quick import Dataset_q
from dataset_global import Dataset_global
from options import get_options
from model import *
from unity import CV_plot
import dgl
import pickle
import numpy as np
import os
from MyDataLoader_ud import *
from time import time
from random import shuffle
import itertools
import random
# apply oversampling on the dataset
from tensorboardX import SummaryWriter

def load_model(device,options):

    model_dir = options.model_saving_dir
    if os.path.exists(os.path.join(model_dir, 'model.pkl')) is False:
        return None,None


    with open(os.path.join(model_dir,'model.pkl'), 'rb') as f:
        #print(f)
        param, model,mlp,combine = pickle.load(f)
        #print(classifier)
        param.model_saving_dir = options.model_saving_dir
        model = model.to(device)
        if options.change_lr:
            param.learning_rate = options.learning_rate
        if options.change_alpha:
            param.alpha = options.alpha
    return param,model,mlp,combine

def type_count(ntypes,count):
    for tp in ntypes:
        tp = tp.item()
        count[tp] +=1

def cal_ratios(count1,count2):
    ratios = []
    for i in range(len(count1)):
        if count2[i] == 0:
            ratios.append(-1)
        else:
            ratio = count1[i] / count2[i]
            ratios.append(round(ratio,4))
    return ratios


def visualize_val(val_graphs,device,model,mlp,combine,options):
    writer = SummaryWriter(logdir='../tensorboard_logs/embedding/', comment='fgnn_embedding')
    total_num, total_loss, correct, fn, fp, tn, tp = 0, 0.0, 0, 0, 0, 0, 0

    runtime = 0

    with th.no_grad():
        labels = th.tensor([],dtype=th.long).to(device)
        global_embeddings = None
        for idx, (label, graph, POs, depth) in enumerate(val_graphs):
            labels = th.cat((labels, th.tensor([label],dtype=th.long).to(device)))
            sampler = Sampler([None] * depth, include_dst_in_src=options.include)
            blocks = sampler.sample_blocks(graph,POs)

            start_time = time()
            blocks = [b.to(device) for b in blocks]
            if options.gnn:
                input_features = blocks[0].srcdata["ntype"]
                # print(input_features.shape)
            else:
                input_features = blocks[0].srcdata["f_input"]

            po_embeddings = model(blocks, input_features)
            global_embedding = combine(po_embeddings)
            if global_embeddings is None:
                global_embeddings = global_embedding.unsqueeze(0)
            else:
                global_embeddings = th.cat((global_embeddings, global_embedding.unsqueeze(0)), dim=0)

        #label_hats = mlp(global_embeddings)
        os.makedirs('../embedding/',exist_ok=True)
        with open('../embedding/data_pretrained.pkl','wb') as f:
            pickle.dump((global_embeddings,labels),f)





def main(options):

    th.multiprocessing.set_sharing_strategy('file_system')
    device = th.device("cuda:"+str(options.gpu) if th.cuda.is_available() else "cpu")


    with open(os.path.join(options.datapath, 'val_data.pkl'), 'rb') as f:
        print('loading val data')
        val_graphs=pickle.load(f)

    print('num_val',len(val_graphs))

    print(options.degree)
    options, model, mlp, combine = load_model(device, options)
    # for i in range(in_nlayers+1):
    #     model.GCN1.layers[i].weight = model.GCN1.layers[i].weight.to(device)
    # for i in range(out_nlayers+1):
    #     model.GCN2.layers[i].weight = model.GCN2.layers[i].weight.to(device)

    if model is None:
        print("No model, please prepocess first , or choose a pretrain model")
        return
    print(model)
    mlp = mlp.to(device)
    print(mlp)
    print(combine)
    visualize_val(val_graphs, device, model,mlp, combine, options)


if __name__ == "__main__":
    seed = 1234
    # th.set_deterministic(True)
    th.manual_seed(seed)
    th.cuda.manual_seed(seed)
    np.random.seed(seed)
    main(get_options())
