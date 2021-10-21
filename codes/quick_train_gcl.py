
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

def preprocess(data_path,device,options):
    #datapaths = ['../dataset/test/ICCAD2014/v/']
    # datapaths = ["../dc/boom/implementation/"]
    #save_file = 'iog_dc_cd5.pkl'

    #Dataset = Dataset_dc
    in_dim = get_options().in_dim
    nlabels = options.nlabels
    label2id = {}
    if not os.path.exists( os.path.join(data_path, 'i{}'.format(options.num_input))) :
        os.makedirs(os.path.join(data_path, 'i{}'.format(options.num_input)))
    data_file = os.path.join(data_path, 'i{}/{}.pkl'.format(options.num_input,options.split))
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
        datapath = "../truthtables/i{}/implementation2/".format(options.num_input)
        th.multiprocessing.set_sharing_strategy('file_system')
        #print(dataset_not_edge.Dataset_n)
        dataset = Dataset_gcl(datapath,options.split)
        #print(g.ndata)
        print(dataset.batch_graph.ndata)
        #print(g.edata['r'])
        with open(data_file,'wb') as f:
            pickle.dump((dataset.batch_graph,dataset.POs,dataset.depth),f)

        #split_data(g,split_save_file,options)
        # with open(save_file, 'rb') as f:
        #     g = pickle.load(f)
        # print(g.edata)


    if options.pre_train :
        with open(os.path.join(options.pre_model_dir,'model.pkl'),'rb') as f:
            _,model = pickle.load(f)
    else:
        network = FuncGCN
        num_heads = options.num_heads
        in_nlayers = options.in_nlayers
        model = network(
            label = options.label,
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


    print("creating model in:",options.model_saving_dir)
    print(model)
    if os.path.exists(options.model_saving_dir) is False:
        os.makedirs(options.model_saving_dir)
        with open(os.path.join(options.model_saving_dir, 'model.pkl'), 'wb') as f:
            parameters = options
            pickle.dump((parameters, model), f)
        with open(os.path.join(options.model_saving_dir, 'res.txt'), 'w') as f:
            pass
def load_model(device,options):

    model_dir = options.model_saving_dir
    if os.path.exists(os.path.join(model_dir, 'model.pkl')) is False:
        return None,None


    with open(os.path.join(model_dir,'model.pkl'), 'rb') as f:
        #print(f)
        param, classifier = pickle.load(f)
        #print(classifier)
        param.model_saving_dir = options.model_saving_dir
        classifier = classifier.to(device)
        if options.change_lr:
            param.learning_rate = options.learning_rate
        if options.change_alpha:
            param.alpha = options.alpha
    return param,classifier

def unlabel_low(g,unlabel_threshold):
    mask_low = g.ndata['position'] <= unlabel_threshold
    g.ndata['label_o'][mask_low] = 0
def load_valdata( val_data_file,options):

    with open(val_data_file, 'rb') as f:
        val_g = pickle.load(f)
    unlabel_low(val_g, 1)
    label_name = 'label_o'
    val_g.ndata['label_o'][val_g.ndata['label_o'].squeeze(-1) == 2] = 1
    val_g.ndata['f_input'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
    val_g.ndata['temp'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim), dtype=th.float)

    val_g.ndata['ntype2'] = th.argmax(val_g.ndata['ntype'], dim=1).squeeze(-1)
    val_graphs = dgl.unbatch(val_g)
    return  val_graphs
def validate_sim(val_graphs,train_pos_embeddings,sampler,device,model):
    for val_g in val_graphs:
        val_nodes = th.tensor(range(val_g.number_of_nodes()))

        loader = MyNodeDataLoader(
            True,
            val_g,
            val_nodes,
            sampler,
            batch_size=len(val_nodes),
            shuffle=False,
            drop_last=False,
        )
        #pos_embeddings = th.tensor([]).to(device)
        #neg_embeddings = th.tensor([]).to(device)
        for ni, (central_nodes, input_nodes, blocks) in enumerate(loader):
            blocks = [b.to(device) for b in blocks]
            input_features = blocks[0].srcdata["f_input"]
            output_labels = blocks[-1].dstdata['label_o'].squeeze(1)
            embeddings = model(blocks, input_features)
            pos_mask = (output_labels == 1)
            neg_mask = (output_labels == 0)
            pos_embeddings = embeddings[pos_mask]
            neg_embeddings = embeddings[neg_mask]
            #print(embeddings)
            #print('-----------------------------------------------------------------------------------------\n\n')
            pos_sim,neg_sim,cross_sim = check_sim(pos_embeddings,neg_embeddings,train_pos_embeddings)

            print('\t  pos sim :{:.4f}, cross_sim:{:.4f}, neg sim:{:.4f}'.format(pos_sim,cross_sim,neg_sim))
            #print('-----------------------------------------------------------------------------------------\n\n')

def check_sim(embeddings,neg_embeddings,train_pos_embeddings):
    total_pos_sim ,total_neg_sim ,total_cross_sim= 0,0,0
    num = embeddings.shape[0]
    print(num)
    for i in range(num):
        sim = (th.sum(th.cosine_similarity(embeddings[i],embeddings,dim=-1))-1)/(num-1)
        total_pos_sim += sim
        if train_pos_embeddings is not None:
            cross_sim = (th.sum(th.cosine_similarity(embeddings[i],train_pos_embeddings,dim=-1)))/len(train_pos_embeddings)
            total_cross_sim += cross_sim
        if neg_embeddings is not None:
            neg_sim = (th.sum(th.cosine_similarity(embeddings[i], neg_embeddings, dim=-1))) / len(neg_embeddings)
            total_neg_sim += neg_sim

    return total_pos_sim/num,total_neg_sim/num,total_cross_sim/num
    #print('avg pos sim :{:.4f}, avg neg sim:{:.4f}'.format(total_pos_sim.item()/len(embeddings),total_neg_sim.item()/len(embeddings)))

def NCEloss(pos1,pos2,neg,tao):
    pos_similarity  = th.cosine_similarity(pos1,pos2,dim=-1)
    neg_similarity = th.cosine_similarity(pos1,neg,dim=-1)
    loss = -1*th.log(
                th.exp(pos_similarity/tao)
                /
                (th.sum(th.exp(neg_similarity/tao))-math.exp(1/tao))
    )
    return loss

def train(options):
    start_input, start_aug = options.start[0],options.start[1]
    loss_thred = options.loss_thred
    th.multiprocessing.set_sharing_strategy('file_system')
    device = th.device("cuda:"+str(options.gpu) if th.cuda.is_available() else "cpu")
    # Dump the preprocessing result to save time!
    # for region detecion, the data_path is 'data/region', for boundary(io) detection, the data_path is 'data/boundary'
    data_path = '../data/gcl_new/'
    # train_data_files = []
    # for i in range(5,options.num_input+1):
    #     train_data_files.append((i,os.path.join(data_path,'i{}/merge.pkl'.format(i))))
    #train_data_file = os.path.join(data_path,'i{}.pkl'.format(options.num_input))W
    # neg_data_file = os.path.join(data_path, 'rocket2.pkl')
    # val_data_file = os.path.join(data_path,'rocket2.pkl')
    #split_dir = 'splits/rokcet'
    in_nlayers,out_nlayers = options.in_nlayers,options.out_nlayers
    num_epoch = options.num_epoch
    if options.preprocess :
        preprocess(data_path,device,options)
        return
    print(options)

    print("Loading data...")
    val_sampler = Sampler([None] * (in_nlayers + 1), include_dst_in_src=options.include)
    val_data_file1 = os.path.join('../data/simplify9', 'rocket2.pkl')
    val_graphs1 = load_valdata(val_data_file1,options)
    val_graph1 = dgl.batch(val_graphs1)
    val1_pos_nodes = th.tensor(range(val_graph1.number_of_nodes()))[val_graph1.ndata['label_o'].squeeze(1)==1]
    val_dataloader1 = MyNodeDataLoader(
                    True,
                    val_graph1,
                    val1_pos_nodes,
                    val_sampler,
                    batch_size=1024,
                    shuffle=False,
                    drop_last=False,
                )
    val_data_file2 = os.path.join('../data/simplify9', 'boom2.pkl')
    val_graphs2 = load_valdata(val_data_file2, options)
    val_graph2 = dgl.batch(val_graphs2)
    #val2_pos_nodes = th.tensor(range(val_graph2.number_of_nodes()))[val_graph2.ndata['label_o'] == 1]
    val_dataloader2 = MyNodeDataLoader(
        True,
        val_graph2,
        th.tensor(range(val_graph2.number_of_nodes())),
        val_sampler,
        batch_size=val_graph2.number_of_nodes(),
        shuffle=False,
        drop_last=False,
    )
    data_loaders = []
    for num_input in range(start_input,options.num_input+1):
        print('num_input{}'.format(num_input))
        if num_input!=5:
            break
        origin_file = os.path.join(data_path,'i{}/new_origin.pkl'.format(num_input))
        aug_files = [os.path.join(data_path,'i{}/new_aug{}.pkl'.format(num_input,i)) for i in range(start_aug,4)]
        for i ,file in enumerate(aug_files):

            with open(file,'rb') as f:
                train_g,POs,depth = pickle.load(f)
                train_g.ndata['f_input'] = th.ones(size=(train_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
                train_g.ndata['temp'] = th.ones(size=(train_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
                train_g.ndata['ntype2'] = th.argmax(train_g.ndata['ntype'], dim=1).squeeze(-1)


            data_size = len(POs)
            #for po in POs.keys():

            for po in POs:
                assert  len(train_g.successors(po))==0
            if data_size>options.batch_size:
                data_size = int(len(POs)/options.batch_size)*options.batch_size
            POs =POs[:data_size]
            if options.gat:
                add_self_loop = True
            else:
                add_self_loop = False
            sampler = Sampler(depth*[options.degree],include_dst_in_src=options.include,add_self_loop=add_self_loop)
            print('aug{}, depth:{},num_nodes:{}, num_pos:{}'.format(i,depth,train_g.number_of_nodes(),len(POs)))
        # train_blocks = sampler.sample_blocks(train_g,POs)
        # train_blocks = [b.to(device) for b in train_blocks]
        # pos_pairs = None
        #
        # print(train_blocks)
        # print(pos_pairs)
        #print(po_depths)
        #check(train_g,POs,depth)
            data_loaders.append(
                (num_input,i+1,MyNodeDataLoader(
                    False,
                    train_g,
                    POs,
                    sampler,
                    batch_size=options.batch_size,
                    shuffle=False,
                    drop_last=False,
                ))
            )
        # dataloader = MyNodeDataLoader(
        #     False,
        #     train_g,
        #     aug_nids,
        #     sampler,
        #     batch_size=options.batch_size,
        #     shuffle=False,
        #     drop_last=False,
        # )


    print("Data successfully loaded")

    options, model = load_model(device, options)
    if model is None:
        print("No model, please prepocess first , or choose a pretrain model")
        return
    print(model)
    optim = th.optim.Adam(
        model.parameters(), options.learning_rate, weight_decay=options.weight_decay
    )
    model.train()
    print(options.alpha)
    
    max_val_recall, max_val_precision = 0.0,0.0
    print("Start training")
    max_F1_score = 0
    pre_loss = 100
    stop_score = 0

    for num_input,aug_indx,dataloader in data_loaders:
        print(len(dataloader))
        for epoch in range(num_epoch):
            runtime = 0
            total_num,total_loss,correct,fn,fp,tn,tp = 0,0.0,0,0,0,0,0
            pos_count , neg_count =0, 0
            for ni, (central_nodes, input_nodes, blocks) in enumerate(dataloader):
                # continue
                start_time = time()
                neg_embeddings = []
                blocks = [b.to(device) for b in blocks]
                loss = 0

                embeddings = model(blocks, blocks[0].srcdata['f_input'])
                for i in range(0, len(embeddings), 2):
                    loss += NCEloss(embeddings[i], embeddings[i + 1], embeddings, options.tao)
                    loss += NCEloss(embeddings[i + 1], embeddings[i], embeddings, options.tao)
                loss = loss / len(embeddings)

                if num_input>=7: print(ni,loss.item())
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


            print("epoch[{:d}]".format(epoch))
            print("training runtime: ",runtime)
            print("  train:")
            print("loss:{:.8f}".format(Train_loss.item()))
            # val1_pos_embeddings = th.tensor([]).to(device)
            # for _,_,val1_pos_blocks in val_dataloader1:
            #     val1_pos_blocks = [b.to(device) for b in val1_pos_blocks]
            #     input_features =  val1_pos_blocks[0].srcdata["f_input"]
            #     val1_pos_embeddings = th.cat((val1_pos_embeddings,model(val1_pos_blocks, input_features)),dim=0)
            #
            # val1_pos_sim,_,_ = check_sim(val1_pos_embeddings,None,None)
            # print('\ttrain pos sim: {:.4f}'.format(val1_pos_sim))
            #validate_sim([val_graph2], val1_pos_embeddings,val_sampler,device, model)
            #validate_sim(val_graphs2, None,val_sampler, device, model)

            # print("\ttp:", tp, " fp:", fp, " fn:", fn, " tn:", tn, " precision:", round(Train_precision,3))
            # print("\tloss:{:.8f}, acc:{:.3f}, recall:{:.3f}, F1 score:{:.3f}".format(Train_loss,Train_acc,Train_recall,Train_F1_score))
            # #if options.weighted:
            #     #print('alpha = ',model.alpha)
            # print("num of pos: ",pos_count," num of neg: ",neg_count)
            # val_acc, val_recall,val_precision, val_F1_score = validate(valdataloader, label_name,device,
            #                                                                      model, Loss,options.alpha,beta,
            #                                                                      depth,width,num_aug,query_embedding,thredshold=0.75)
            # if epoch % 1 == 0 and get_options().rel:
            #     #if get_options().attn_type == 'node': print(model.GCN1.layers[0].fc_attn_n.weight)
            #     #print(model.GCN1.layer

            with open(os.path.join(options.model_saving_dir, 'res.txt'), 'a') as f:
                # f.write(str(round(Train_loss, 3)) + " " + str(round(Train_acc, 3)) + " " + str(
                #     round(Train_recall, 3)) + " " + str(round(Train_precision,3))+" " + str(round(Train_F1_score, 3)) + "\n")
                # f.write(str(round(val_loss, 3)) + " " + str(round(val_acc, 3)) + " " + str(
                #     round(val_recall, 3)) + " "+ str(round(val_precision,3))+" " + str(round(val_F1_score, 3)) + "\n")
                f.write(str(round(Train_loss.item(), 3)) )
                f.write('\n')

            #judgement = val_F1_score > max_F1_score
            judgement = Train_loss < 100
            if judgement:
               #max_F1_score = val_F1_score
               print("Saving model.... ", os.path.join(options.model_saving_dir))
               if os.path.exists(options.model_saving_dir) is False:
                  os.makedirs(options.model_saving_dir)
               with open(os.path.join(options.model_saving_dir, 'model.pkl'), 'wb') as f:
                  parameters = options
                  pickle.dump((parameters, model), f)
               print("Model successfully saved")
            if Train_loss.item()<loss_thred:
                print('train loss beyond thredshold, change to the next dataset: {} {}'.format(num_input,aug_indx))
                break



if __name__ == "__main__":
    seed = 1234
    # th.set_deterministic(True)
    th.manual_seed(seed)
    th.cuda.manual_seed(seed)
    np.random.seed(seed)
    train(get_options())
