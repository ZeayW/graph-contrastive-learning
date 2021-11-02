from dataset_gcl import Dataset_gcl
from options import get_options
from model import *
from unity import CV_plot
import dgl
import pickle
import numpy as np
import os
from MyDataLoader_ud import *
from time import time
import math
import networkx as nx
from random import shuffle
import random

def preprocess(data_path, device, options):
    # datapaths = ['../dataset/test/ICCAD2014/v/']
    # datapaths = ["../dc/boom/implementation/"]
    # save_file = 'iog_dc_cd5.pkl'

    # Dataset = Dataset_dc
    in_dim = get_options().in_dim
    nlabels = options.nlabels
    label2id = {}
    if not os.path.exists(os.path.join(data_path, 'i{}'.format(options.num_input))):
        os.makedirs(os.path.join(data_path, 'i{}'.format(options.num_input)))
    data_file = os.path.join(data_path, 'i{}/{}.pkl'.format(options.num_input, options.split))
    val_data_file = os.path.join(data_path, 'rocket2.pkl')

    # if os.path.exists(val_data_file) is False:
    #     datapaths = ["../dc/rocket/implementation/"]
    #     th.multiprocessing.set_sharing_strategy('file_system')
    #     #print(dataset_not_edge.Dataset_n)
    #     dataset = Dataset_dc("Rocket",datapaths,label2id)
    #     g = dataset.batch_graph
    #     #print(g.ndata)
    #     print(g.ndata)
    #     #print(g.edata['r'])
    #     with open(val_data_file,'wb') as f:
    #         pickle.dump(g,f)
    if os.path.exists(data_file) is False:
        datapath = "../truthtables/i{}/implementation/".format(options.num_input)
        th.multiprocessing.set_sharing_strategy('file_system')
        # print(dataset_not_edge.Dataset_n)
        dataset = Dataset_gcl(datapath, options.split)
        # print(g.ndata)
        print(dataset.batch_graph.ndata)
        # print(g.edata['r'])
        with open(data_file, 'wb') as f:
            pickle.dump((dataset.batch_graph, dataset.POs, dataset.depth), f)

        # split_data(g,split_save_file,options)
        # with open(save_file, 'rb') as f:
        #     g = pickle.load(f)
        # print(g.edata)

    if options.pre_train:
        with open(os.path.join(options.pre_model_dir, 'model.pkl'), 'rb') as f:
            _, model,proj_head = pickle.load(f)
    else:
        network = FuncGCN
        num_heads = options.num_heads
        in_nlayers = options.in_nlayers
        model = network(
            label=options.label,
            include=options.include,
            device=device,
            in_dim=in_dim,
            hidden_dim=options.hidden_dim,
            out_dim=options.out_dim,
            num_heads=num_heads,
            n_layers=in_nlayers,
            dropout=options.gcn_dropout,
            aggregation_type=options.agg_type,
            combine_type=options.combine,
        )
        proj_head = Projection_Head(
            in_feats=options.out_dim,
            out_feats=options.out_dim
        ).to(device)
    print("creating model in:", options.model_saving_dir)
    print(model)
    if os.path.exists(options.model_saving_dir) is False:
        os.makedirs(options.model_saving_dir)
        with open(os.path.join(options.model_saving_dir, 'model.pkl'), 'wb') as f:
            parameters = options
            pickle.dump((parameters, model,proj_head), f)
        with open(os.path.join(options.model_saving_dir, 'res.txt'), 'w') as f:
            pass


def load_model(device,options):

    model_dir = options.model_saving_dir
    if os.path.exists(os.path.join(model_dir, 'model.pkl')) is False:
        return None,None


    with open(os.path.join(model_dir,'model.pkl'), 'rb') as f:
        #print(f)
        param, classifier,proj_head = pickle.load(f)
        #print(classifier)
        param.model_saving_dir = options.model_saving_dir
        classifier = classifier.to(device)
        proj_head = proj_head.to(device)
        if options.change_lr:
            param.learning_rate = options.learning_rate
        if options.change_alpha:
            param.alpha = options.alpha
    return param,classifier,proj_head

def unlabel_low(g, unlabel_threshold):
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


def check_sim(embeddings, neg_embeddings,boom_embeddings):
    total_pos_sim, total_neg_sim = 0,0
    total_cross_sim = 0
    num = embeddings.shape[0]
    avg_cross_sim = 0
    for i in range(num):
        #sim = (th.sum(th.cosine_similarity(embeddings[i], embeddings, dim=-1)) - 1) / (num - 1)
        neg_sim = (th.sum(th.cosine_similarity(embeddings[i], neg_embeddings, dim=-1))) / len(neg_embeddings)
        # distance += d
        if boom_embeddings is not None:
            cross_sim =  (th.sum(th.cosine_similarity(embeddings[i], boom_embeddings, dim=-1))) / len(boom_embeddings)
            total_cross_sim += cross_sim
        #total_pos_sim += sim
        total_neg_sim += neg_sim
        # print('sample {}, pos sim:{}, neg sim{}'.format(i,sim,neg_sim))
    avg_pos_sim = total_pos_sim / len(embeddings)
    avg_neg_sim = total_neg_sim / len(embeddings)
    if boom_embeddings is not None:
        avg_cross_sim = total_cross_sim / len(embeddings)
    # print('avg pos sim :{:.4f}, avg neg sim:{:.4f}'.format(avg_pos_sim,
    #                                                        avg_neg_sim))
    print('avg pos sim :{:.4f}, avg cross sim :{:.4f}, avg neg sim:{:.4f}'.format(avg_pos_sim, avg_cross_sim,
                                                           avg_neg_sim))
    return avg_pos_sim,avg_cross_sim,avg_neg_sim
def validate_sim(val_g, boom_embeddings,sampler, device, model,res_sim):
    #res_sim = []
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

    #return res_sim

def NCEloss(pos1, pos2, neg, tao):
    pos_similarity = th.cosine_similarity(pos1, pos2, dim=-1)
    neg_similarity = th.cosine_similarity(pos1, neg, dim=-1)
    loss = -1 * th.log(
        th.exp(pos_similarity / tao)
        /
        (th.sum(th.exp(neg_similarity / tao)) - math.exp(1 / tao))
    )
    return loss

def shuffle_nids(nids):
    res_nids = []
    nids1 ,nids2 = [],[]
    for i,nid in enumerate(nids):
        if i%2==0:
            nids1.append(nid)
        else:
            nids2.append(nid)
    randnum= random.randint(1,100)
    random.seed(randnum)
    random.shuffle(nids1)
    random.seed(randnum)
    random.shuffle(nids2)
    for i in range(len(nids1)):
        res_nids.append(nids1[i])
        res_nids.append(nids2[i])
    return res_nids
def train(options):
    batch_sizes = {}
    start_input, start_aug = options.start[0], options.start[1]
    end_input, end_aug = options.end[0], options.end[1]
    print(start_input,start_aug)
    print(end_input,end_aug)
    loss_thred = options.loss_thred
    th.multiprocessing.set_sharing_strategy('file_system')
    device = th.device("cuda:" + str(options.gpu) if th.cuda.is_available() else "cpu")
    # Dump the preprocessing result to save time!
    # for region detecion, the data_path is 'data/region', for boundary(io) detection, the data_path is 'data/boundary'
    data_path = '../data/gcl_new/'
    train_data_files = []
    # for num_aug in range(1,4):
    #     for num_input in range(5, 8):
    #         train_data_files.append((num_input,num_aug))
    for num_input in range(5,8):
        for num_aug in range(1,4):
            train_data_files.append((num_input,num_aug))
    start_pos,end_pos = 0,0
    for i , (num_input,num_aug) in enumerate(train_data_files):
        if num_input == start_input and num_aug == start_aug:
            start_pos = i
        if num_input == end_input and num_aug == end_aug:
            end_pos = i
    train_data_files = train_data_files[start_pos:end_pos+1]
    # for num_input,num_aug in train_data_files:
    #     if num_aug == 1:
    #         batch_sizes.append(350)
    #     elif num_aug == 2:
    #         batch_sizes.append(400)
    #     elif num_aug == 3:
    #         batch_sizes.append(512)
    for num_input,num_aug in train_data_files:
        if num_input == 5:
            batch_sizes[(num_input,num_aug)] = 350
        else:
            batch_sizes[(num_input,num_aug)] = 512

    print(train_data_files)
    #exit()
    # train_data_file = os.path.join(data_path,'i{}.pkl'.format(options.num_input))W
    # neg_data_file = os.path.join(data_path, 'rocket2.pkl')
    # val_data_file = os.path.join(data_path,'rocket2.pkl')
    # split_dir = 'splits/rokcet'
    in_nlayers, out_nlayers = options.in_nlayers, options.out_nlayers
    num_epoch = options.num_epoch
    if options.preprocess:
        preprocess(data_path, device, options)
        return
    print(options)

    print("Loading data...")
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
    data_loaders = []
    for i,(num_input,num_aug) in enumerate(train_data_files):
        file = os.path.join(data_path, 'i{}/aug{}.pkl'.format(num_input, num_aug))
        with open(file, 'rb') as f:
            train_g, POs, depth = pickle.load(f)
            train_g.ndata['f_input'] = th.ones(size=(train_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
            train_g.ndata['temp'] = th.ones(size=(train_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
            train_g.ndata['ntype2'] = th.argmax(train_g.ndata['ntype'], dim=1).squeeze(-1)

        data_size = len(POs)
        # for po in POs.keys():

        for po in POs:
            assert len(train_g.successors(po)) == 0
        if data_size > options.batch_size:
            data_size = int(len(POs) / options.batch_size) * options.batch_size
        POs = POs[:data_size]
        if options.gat:
            add_self_loop = True
        else:
            add_self_loop = False
        sampler = Sampler(depth * [options.degree], include_dst_in_src=options.include, add_self_loop=add_self_loop)
        print('aug{}, depth:{},num_nodes:{}, num_pos:{}'.format(num_aug, depth, train_g.number_of_nodes(), len(POs)))
        # train_blocks = sampler.sample_blocks(train_g,POs)
        # train_blocks = [b.to(device) for b in train_blocks]
        # pos_pairs = None
        #
        # print(train_blocks)
        # print(pos_pairs)
        # print(po_depths)
        # check(train_g,POs,depth)
        data_loaders.append(
            (num_input, num_aug, MyNodeDataLoader(
                False,
                train_g,
                POs,
                sampler,
                bs = batch_sizes[(num_input, num_aug)],
                batch_size=batch_sizes[(num_input, num_aug)],
                shuffle=False,
                drop_last=False,
            ))
        )


    print("Data successfully loaded")

    options, model,proj_head = load_model(device, options)
    if model is None:
        print("No model, please prepocess first , or choose a pretrain model")
        return
    print(model)
    print(proj_head)
    optim = th.optim.Adam(
        model.parameters(), options.learning_rate, weight_decay=options.weight_decay
    )
    model.train()
    print(options.alpha)

    max_val_recall, max_val_precision = 0.0, 0.0
    print("Start training")
    max_F1_score = 0
    pre_loss = 100
    stop_score = 0
    dic = {}
    for num_input, aug_indx, dataloader in data_loaders:
        print('dataset:',num_input,aug_indx)
        for epoch in range(num_epoch):
            POs = dataloader.nids
            #POs = shuffle_nids(POs)
            # print(POs[:100])
            sampler = dataloader.block_sampler
            dataloader = MyNodeDataLoader(
                False,
                train_g,
                POs,
                sampler,
                bs=batch_sizes[(num_input, aug_indx)],
                batch_size=batch_sizes[(num_input, aug_indx)],
                shuffle=False,
                drop_last=False,
            )
            runtime = 0
            total_num, total_loss, correct, fn, fp, tn, tp = 0, 0.0, 0, 0, 0, 0, 0
            pos_count, neg_count = 0, 0
            for ni, (central_nodes, input_nodes, blocks) in enumerate(dataloader):
                #print(central_nodes)
                if ni==len(dataloader)-1:
                    continue
                # continue
                start_time = time()
                neg_embeddings = []
                blocks = [b.to(device) for b in blocks]
                loss = 0

                embeddings = model(blocks, blocks[0].srcdata['f_input'])
                embeddings = proj_head(embeddings)
                for i in range(0, len(embeddings), 2):
                    loss += NCEloss(embeddings[i], embeddings[i + 1], embeddings, options.tao)
                    loss += NCEloss(embeddings[i + 1], embeddings[i], embeddings, options.tao)
                loss = loss / len(embeddings)
                print(ni, loss.item())
                #if num_input >= 7: print(ni, loss.item())
                total_num += 1
                total_loss += loss
                endtime = time()
                runtime += endtime - start_time

                # print(loss.item())
                # val_acc, val_recall, val_precision, val_F1_score = validate(valdataloader, label_name, device,
                #                                                             model, Loss, options.alpha, beta,
                #                                                             depth, width, num_aug, po_depths,query_embedding,
                #                                                             thredshold=0.0)
                start_time = time()
                optim.zero_grad()
                loss.backward()
                # print(model.GCN1.layers[0].attn_n.grad)
                optim.step()
                endtime = time()
                runtime += endtime - start_time

            Train_loss = total_loss / total_num
            boom_embeddings = None
            for _,_, blocks in val_dataloader1:
                blocks = [b.to(device) for b in blocks]
                boom_embeddings = model(blocks,blocks[0].srcdata['f_input'])
            print("epoch[{:d}]".format(epoch))
            print("training runtime: ", runtime)
            print("  train:")
            print("loss:{:.8f}".format(Train_loss.item()))
            res_sims = []
            for val_g in val_graphs:
                validate_sim(val_g,boom_embeddings, val_sampler, device, model,res_sims)


            with open(os.path.join(options.model_saving_dir, 'res.txt'), 'a') as f:
                f.write(str(round(Train_loss.item(), 3)))
                for pos_sim,cross_sim,neg_sim in res_sims:
                    f.write('\n'+str(round(cross_sim.item(),4))+'\t'+str(round(neg_sim.item(),4)))
                f.write('\n')

            # judgement = val_F1_score > max_F1_score
            judgement = True
            #judgement = Train_loss < 100
            if judgement:
                # max_F1_score = val_F1_score
                print("Saving model.... ", os.path.join(options.model_saving_dir))
                if os.path.exists(options.model_saving_dir) is False:
                    os.makedirs(options.model_saving_dir)
                with open(os.path.join(options.model_saving_dir, 'model.pkl'), 'wb') as f:
                    parameters = options
                    pickle.dump((parameters, model,proj_head), f)
                print("Model successfully saved")
            if Train_loss.item() < loss_thred:
                print('train loss beyond thredshold, change to the next dataset: {} {}'.format(num_input, aug_indx))
                break


if __name__ == "__main__":
    seed = 1234
    # th.set_deterministic(True)
    th.manual_seed(seed)
    th.cuda.manual_seed(seed)
    np.random.seed(seed)
    train(get_options())