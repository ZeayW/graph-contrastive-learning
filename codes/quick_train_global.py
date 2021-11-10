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


def preprocess(data_path,device,options,in_dim):
    #datapaths = ['../dataset/test/ICCAD2014/v/']
    # datapaths = ["../dc/boom/implementation/"]
    #save_file = 'iog_dc_cd5.pkl'

    Dataset = Dataset_global
    #in_dim = get_options().in_dim
    nlabels = options.nlabels
    label2id = {}
    if os.path.exists(data_path) is False:
        os.makedirs(data_path)

    target = options.label
    train_data_file = os.path.join(data_path, '{}.pkl').format(target)
    val_data_file = os.path.join(data_path, 'val.pkl')

    if os.path.exists(val_data_file) is False:
        datapath = "../amg/"
        # datapaths = ["../arithmetic_netlists/adders/","../arithmetic_netlists/multiplier/"]
        labels = [0, 1]
        print('generating validate dataset....')
        th.multiprocessing.set_sharing_strategy('file_system')
        dataset = Dataset(datapath)
        graphs = dataset.graphs
        # print(g.ndata)
        # print(g.ndata)
        # print(g.edata['r'])
        with open(val_data_file, 'wb') as f:
            pickle.dump(graphs, f)
            print('saving dataset...')
    #print(train_data_file)
    if os.path.exists(train_data_file) is False:

        datapath = "../arithmetic_netlists/{}".format(target)
        #datapaths = ["../arithmetic_netlists/adders/","../arithmetic_netlists/multiplier/"]
        labels = [0,1]
        th.multiprocessing.set_sharing_strategy('file_system')
        dataset = Dataset(datapath)
        graphs = dataset.graphs
        # print(g.ndata)
        # print(g.ndata)
        # print(g.edata['r'])
        with open(train_data_file, 'wb') as f:
            pickle.dump(graphs, f)


    out_dim1 = options.out_dim
    out_dim2 = out_dim1
    hidden_dim1 = options.hidden_dim
    hidden_dim2 = hidden_dim1
    print(label2id)
    if len(label2id) != 0:
        with open(os.path.join(data_path,'label2id.pkl'),'wb') as f:
            pickle.dump(label2id,f)

    with open(os.path.join(options.pre_model_dir,'model.pkl'),'rb') as f:
        if 'proj' in options.pre_model_dir or 'shuffle' in options.pre_model_dir or 'abgnn' in options.pre_model_dir:
            _, model,_ = pickle.load(f)
        else:
            _,model = pickle.load(f)

    mlp = MLP(
        in_dim = model.out_dim,
        out_dim = options.nlabels,
        nlayers = options.n_fcn,
        dropout = options.mlp_dropout
    ).to(device)
    combine = Combine()
    print(model)
    print(mlp)
    print("creating model in:",options.model_saving_dir)
    if os.path.exists(options.model_saving_dir) is False:
        os.makedirs(options.model_saving_dir)
        with open(os.path.join(options.model_saving_dir, 'model.pkl'), 'wb') as f:
            parameters = options
            pickle.dump((parameters, model,mlp,combine), f)
        with open(os.path.join(options.model_saving_dir, 'res.txt'), 'w') as f:
            pass
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

def get_reverse_graph(g):
    edges = g.edges()
    reverse_edges = (edges[1], edges[0])

    rg = dgl.graph(reverse_edges, num_nodes=g.num_nodes())
    for key, value in g.ndata.items():
        # print(key,value)
        rg.ndata[key] = value
    for key, value in g.edata.items():
        # print(key,value)
        rg.edata[key] = value
    return rg
def validate(val_graphs,device,model,mlp,combine,Loss,alpha,beta,options):

    total_num, total_loss, correct, fn, fp, tn, tp = 0, 0.0, 0, 0, 0, 0, 0

    error_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fp_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fn_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    num_errors = 0
    runtime = 0
    num_batch = 0
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
            # output_labels = blocks[-1].dstdata[label_name].squeeze(1)
            # total_num += len(output_labels)
            po_embeddings = model(blocks, input_features)
            global_embedding = combine(po_embeddings)
            if global_embeddings is None:
                global_embeddings = global_embedding.unsqueeze(0)
            else:
                global_embeddings = th.cat((global_embeddings, global_embedding.unsqueeze(0)), dim=0)

        label_hats = mlp(global_embeddings)
        predict_labels = th.argmax(nn.functional.softmax(label_hats, 1), dim=1)
        print('val ground-truth labels:', labels)
        print('val predict labels:', predict_labels)
        val_loss = Loss(label_hats, labels)
        #total_num += len(labels)
        #total_loss += train_loss.item() * len(labels)
        correct += (
                predict_labels == labels
        ).sum().item()
        endtime = time()
        runtime += endtime - start_time

        val_acc = correct / len(val_graphs)
    #print("validate time:",runtime)

    print("  validate:")
    #print("\ttp:", tp, " fp:", fp, " fn:", fn, " tn:", tn, " precision:", round(precision, 3))
    print("\tloss:{:.3f}, acc:{:.3f}".format(val_loss, val_acc))
    #print("toral num error",num_errors)
    #print("\terror count:",error_count)
    #print("or error ratio:",error_count[5]/num_errors)

    #print('\tavg pos sim :{:.4f}, avg cross sim:{:.4f}, avg neg sim:{:.4f}'.format(pos_sim,cross_sim,neg_sim))
    return [val_loss,val_acc]

def validate_sim(val_graphs,train_pos_embeddings,sampler,device,model,options):
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
            if options.gnn:
                input_features = blocks[0].srcdata["ntype"]
            else:
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
            pos_sim,neg_sim,cross_sim = check_sim(pos_embeddings,neg_embeddings,train_pos_embeddings)

            print('\t   pos sim :{:.4f}, cross_sim:{:.4f}, neg sim:{:.4f}'.format(pos_sim,cross_sim,neg_sim))
            #print('-----------------------------------------------------------------------------------------\n\n')

def check_sim(embeddings,neg_embeddings,train_pos_embeddings):
    total_pos_sim ,total_neg_sim ,total_cross_sim= 0,0,0
    num = embeddings.shape[0]
    #pos_sims = []
    #neg_sims = []
    max_neg_sim = -100
    for i in range(num):
        sim = (th.sum(th.cosine_similarity(embeddings[i],embeddings,dim=-1))-1)/(num-1)
        if train_pos_embeddings is not None:
            cross_sim = (th.sum(th.cosine_similarity(embeddings[i],train_pos_embeddings,dim=-1)))/len(train_pos_embeddings)
            #pos_sims.append(cross_sim.item())
            total_cross_sim += cross_sim
        neg_sim = (th.sum(th.cosine_similarity(embeddings[i], neg_embeddings, dim=-1))) / len(neg_embeddings)
        #distance += d
        total_pos_sim += sim
        total_neg_sim += neg_sim
    # for j in range(len(neg_embeddings)):
    #     cross_neg_sim = (th.sum(th.cosine_similarity(neg_embeddings[j],train_pos_embeddings,dim=-1)))/len(train_pos_embeddings)
    #     neg_sims.append(cross_neg_sim.item())
    #     #print('sample {}, pos sim:{}, neg sim{}'.format(i,sim,neg_sim))
    # print('pos_sim: ',sorted(pos_sims))
    # print('max_neg_sim',sorted(neg_sims))
    return total_pos_sim.item()/len(embeddings),total_neg_sim.item()/len(embeddings),total_cross_sim/num
    #print('avg pos sim :{:.4f}, avg neg sim:{:.4f}'.format(total_pos_sim.item()/len(embeddings),total_neg_sim.item()/len(embeddings)))
def change_label(g,label_name,options):
    mask_out= g.ndata[label_name].squeeze(1) == 1
    mask_in = g.ndata['label_i'].squeeze(1) == 1
    print('len1',len(g.ndata[label_name][mask_out] ))
    # print(train_g.ndata['position'][pos_out])
    g.ndata['position'][mask_out] = (g.ndata['position'][mask_out].squeeze(1) + 1).unsqueeze(1)
    g.ndata['position'][mask_in] = 0
    mask = g.ndata['position'].squeeze(1) > options.nlabels-2
    g.ndata['position'][mask] = options.nlabels-1
    g.ndata['label_o'] = g.ndata['position']

def unlabel_low(g,unlabel_threshold):
    mask_low = g.ndata['position'] <= unlabel_threshold
    g.ndata['label_o'][mask_low] = 0

def replaceDFF(g):
    ntype = th.argmax(g.ndata['ntype'], dim=1).squeeze(-1)
    dff_mask1 = ntype == 3
    dff_mask2 = ntype == 4
    type_tensor = th.zeros(size=(1,g.ndata['ntype'].shape[1])).squeeze(0)
    type_tensor[2] = 1
    g.ndata['ntype'][dff_mask1] = type_tensor
    g.ndata['ntype'][dff_mask2] = type_tensor

def split_val(g):
    nodes = th.tensor(range(g.num_nodes()))
    pos_mask = (g.ndata['label_o'] ==1).squeeze(1)
    pos_nodes = nodes[pos_mask].numpy().tolist()
    #print(pos_nodes)
    shuffle(pos_nodes)
    #print(pos_nodes)
    #exit()
    num_pos = len(pos_nodes)
    val_nodes = pos_nodes[:int(num_pos/5)]
    val_nodes = th.tensor(val_nodes)
    return val_nodes

def train(options):

    th.multiprocessing.set_sharing_strategy('file_system')
    device = th.device("cuda:"+str(options.gpu) if th.cuda.is_available() else "cpu")
    # Dump the preprocessing result to save time!
    #data_path = 'data/region/'
    #data_path = 'data/boundary/'
    freeze = options.freeze
    data_path = options.datapath
    print(data_path)
    #train_data_file = os.path.join(data_path,'concat.pkl')
    val_data_file = os.path.join(data_path,'val.pkl')
    #split_dir = 'splits/rokcet'
    if options.region:
        label_name = 'label_ad'
    elif options.label == 'in':
        label_name = 'label_i'
    else:
        label_name = 'label_o'
    if options.preprocess :
        preprocess(data_path,device,options,options.in_dim)
        return
    print(options)
    options, model,mlp,combine = load_model(device, options)
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
    # for model with reception , in_nlayers is a list; for others , in_nlayers is an integer

    in_nlayers = options.in_nlayers if isinstance(options.in_nlayers,int) else options.in_nlayers[0]
    out_nlayers = options.out_nlayers if isinstance(options.out_nlayers,int) else options.out_nlayers[0]

    # targets = ['adder', 'multiplier', 'divider', 'accumulator', 'subtractor']
    # for i,t in enumerate(targets):
    #
    #     with open(os.path.join(options.datapath,'{}.pkl'.format(t)),'rb') as f:
    #         data = pickle.load(f)
    #         #num_class = len(data)
    #     #print(len(data))
    #     for i,cls in enumerate(data.keys()):
    #         circuits = data[cls]
    #         shuffle(circuits)
    #         data[cls] = circuits
    #     with open(os.path.join(options.datapath,'{}.pkl'.format(t)),'wb') as f:
    #         pickle.dump(data,f)
    # exit()
    print("Loading data...")


    graphs = []
    targets = ['adder','multiplier','divider','accumulator','subtractor']
    val_graphs = []
    train_graphs = []

    with open(os.path.join(options.datapath,'val.pkl'),'rb') as f:
        val_data = pickle.load(f)
        labels = {'adder':0,'multiplier':1}
        for module in val_data.keys():
            label = labels[module]
            data = val_data[module]
            for circuit in data:
                val_graphs.append((label,circuit[0],circuit[1],circuit[2]))
    print('len val1:',len(val_graphs))
    for i,t in enumerate(targets):

        with open(os.path.join(options.datapath,'{}.pkl'.format(t)),'rb') as f:
            data = pickle.load(f)
            #num_class = len(data)
            for j,cls in enumerate(data.keys()):
                circuits = data[cls]
                for g, _, _ in circuits:
                    g.ndata['f_input'] = th.ones(size=(g.number_of_nodes(), options.hidden_dim), dtype=th.float)
                    g.ndata['temp'] = th.ones(size=(g.number_of_nodes(), options.hidden_dim), dtype=th.float)
                    g.ndata['ntype2'] = th.argmax(g.ndata['ntype'], dim=1).squeeze(-1)
                #val_graphs = graphs[:int(len(circuits) / options.train_percent)]
                #shuffle(circuit)
                val_circuits= circuits[:int(len(circuits)/options.val_percent)]
                train_circuits = circuits[int(len(circuits) / options.val_percent):]
                for circuit in val_circuits:
                    val_graphs.append((i,circuit[0],circuit[1],circuit[2]))
                if j<options.train_percent and t not in ['adder','multiplier']:
                    for circuit in train_circuits:
                        train_graphs.append((i, circuit[0], circuit[1], circuit[2]))
    shuffle(train_graphs)



    #shuffle(val_graphs)
    print('num_train:',len(train_graphs))
    print('num_val',len(val_graphs))
    #shuffle(graphs)
    #
    # val_graphs = graphs[:int(len(graphs)/options.train_percent)]
    # train_graphs = graphs[int(len(graphs)/options.train_percent):]
    # with open(val_data_file,'rb') as f:
    #     val_graphs = pickle.load(f)
        # val_graphs =dgl.unbatch(val_g)
        # val_graphs.pop(1)
        # val_g = dgl.batch(val_graphs)



    #sampler = Sampler([None] * (in_nlayers + 1), include_dst_in_src=options.include)


    if in_nlayers == -1:
        in_nlayers = 0
    if out_nlayers == -1:
        out_nlayers = 0
    print(options.degree)
    # in_sampler = Sampler([None] * (in_nlayers + 1), include_dst_in_src=options.include)
    # out_sampler = Sampler([None] * (out_nlayers + 1), include_dst_in_src=options.include)
    #
    # val_nids = th.tensor(range(val_g.number_of_nodes()))
    # print(len(val_nids))
    # val_nids = val_nids[val_g.ndata['label_o'].squeeze(-1)!=-1]
    # print(len(val_nids))
    # traindataloader = MyNodeDataLoader(
    #     False,
    #     train_g,
    #     train_nodes,
    #     in_sampler,
    #     batch_size=options.batch_size,
    #     shuffle=True,
    #     drop_last=False,
    # )
    #
    # valdataloader = MyNodeDataLoader(
    #     True,
    #     val_g,
    #     val_nids,
    #     in_sampler,
    #     batch_size=val_g.num_nodes(),
    #     shuffle=True,
    #     drop_last=False,
    # )
    # loaders = [valdataloader]
    # if options.add==1:
    #     loaders.append(valdataloader2)
    #print("Data successfully loaded")

    k = options.k
    beta = options.beta
    if options.nlabels!=1 : Loss = nn.CrossEntropyLoss()
    else: Loss = nn.BCEWithLogitsLoss(pos_weight=th.FloatTensor([options.pos_weight]).to(device))
    print(options.nlabels)
    print(Loss)
    if freeze:
        optim = th.optim.Adam(
            mlp.parameters(),
            options.learning_rate, weight_decay=options.weight_decay
        )
        mlp.train()
    else:
        optim = th.optim.Adam(
            # itertools.chain(mlp.parameters(),
            #                 model.conv.gate_functions[2].parameters(),
            #                 model.conv.gate_functions[3].parameters(),
            #                 model.conv.gate_functions[4].parameters(),
            #                 model.conv.gate_functions[8].parameters()),
            itertools.chain(mlp.parameters(),model.parameters()),
            #mlp.parameters(),
            options.learning_rate, weight_decay=options.weight_decay
        )

        # for i in range(options.in_dim):
        #     if i in (2,3,4,8):
        #         model.conv.gate_functions[i].train()
        model.train()
        mlp.train()
    # if model.GCN1 is not None:model.GCN1.train()
    # if model.GCN2 is not None:model.GCN2.train()
    # if model.GCN1 is not None and type(model.GCN1) == FuncGCN:
    #     is_FuncGCN1 = True
    #     for i in range(options.in_dim):
    #         model.GCN1.train()
    #
    # if model.GCN2 is not None and type(model.GCN2) == FuncGCN:
    #     is_FuncGCN2 = True
    #     for i in range(options.in_dim):
    #         model.GCN2.gate_functions[i].train()
    print(options.alpha)
    
    max_val_recall, max_val_precision = 0.0,0.0
    print("Start training")
    print(len(train_graphs))
    #print(len(traindataloader))
    pre_loss = 100
    stop_score = 0
    max_acc = 0

    for epoch in range(options.num_epoch):
        runtime = 0
        start_time = time()
        #options, model = load_model(device, options) 
        #optim = th.optim.Adam(
        #model.parameters(), options.learning_rate, weight_decay=options.weight_decay
        #)
        #model.train()

        total_num,total_loss,correct,fn,fp,tn,tp = 0,0.0,0,0,0,0,0
        pos_count , neg_count =0, 0
        labels = th.tensor([],dtype=th.long).to(device)
        global_embeddings = None
        seed = random.randint(1,1000)
        random.seed(seed)
        shuffle(train_graphs)
        #print(train_graphs[0][0],train_graphs[0][2],train_graphs[0][3])
        for idx,(label,graph,POs,depth) in enumerate(train_graphs):
            labels = th.cat((labels,th.tensor([label],dtype=th.long).to(device)))
            sampler = Sampler([None] * depth, include_dst_in_src=options.include)
            blocks = sampler.sample_blocks(graph,POs)
            # dataloader = MyNodeDataLoader(
            #     True,
            #     graph,
            #     POs,
            #     sampler,
            #     batch_size=len(POs),
            #     shuffle=True,
            #     drop_last=False,
            # )
            #print(idx,th.cuda.get_device_capability(device))
            #start_time = time()
            blocks = [b.to(device) for b in blocks]
            if options.gnn:
                input_features = blocks[0].srcdata["ntype"]
                # print(input_features.shape)
            else:
                input_features = blocks[0].srcdata["f_input"]
            # output_labels = blocks[-1].dstdata[label_name].squeeze(1)
            # total_num += len(output_labels)
            po_embeddings = model(blocks, input_features)
            global_embedding = combine(po_embeddings)
            if global_embeddings is None:
                global_embeddings = global_embedding.unsqueeze(0)
            else:
                global_embeddings = th.cat((global_embeddings, global_embedding.unsqueeze(0)), dim=0)
            # for ni, (central_nodes,input_nodes,blocks) in enumerate(dataloader):
            #
            #     #continue
            #     #print(in_blocks)
            #     # print('freeze gate:',model.conv.gate_functions[11].weight)
            #     # print('not freeze gate:', model.conv.gate_functions[2].weight)
            #     #print(mlp.layers[2].weight)
            #

            if idx == len(train_graphs)-1 or (idx!=0 and (idx+1)%options.batch_size ==0):
                #print(global_embeddings.shape)
                #print(mlp)
                label_hats = mlp(global_embeddings)
                #print('label_hat',label_hats)
                #print('softmax',nn.functional.softmax(label_hats,1))
                predict_labels = th.argmax(nn.functional.softmax(label_hats,1),dim=1)
                #print('ground-truth labels:',labels.shape,labels)
                #print('predict labels:',predict_labels.shape,predict_labels)
                train_loss = Loss(label_hats, labels)
                print('loss:',train_loss.item())
                total_num += len(labels)
                total_loss += train_loss.item()*len(labels)
                correct += (
                        predict_labels == labels
                ).sum().item()
                optim.zero_grad()
                train_loss.backward()
                # print(model.GCN1.layers[0].attn_n.grad)
                optim.step()
                labels = th.tensor([],dtype=th.long).to(device)
                global_embeddings = None

        endtime = time()
        runtime += endtime - start_time

        Train_loss = total_loss / total_num
        Train_acc = correct / len(train_graphs)

        total_pos_sim = 0
        #num = pos_embeddings.shape[0]
        # for i in range(num):
        #     sim = (th.sum(th.cosine_similarity(pos_embeddings[i], pos_embeddings, dim=-1)) - 1) / (num - 1)
        #     total_pos_sim += sim

        # if is_FuncGCN1:
        #     print(model.GCN1.conv.gate_functions[13].weight)
        print("epoch[{:d}]".format(epoch))
        print("training runtime: ",runtime)
        print("  train:")
        #print("\ttp:", tp, " fp:", fp, " fn:", fn, " tn:", tn, " precision:", round(Train_precision,3))
        print("\tloss:{:.8f}, acc:{:.3f}, ".format(Train_loss,Train_acc))
        #print('\tavg pos_sim:{:.4f}'.format(total_pos_sim.item() / len(pos_embeddings)))
        #validate_sim([train_g],sampler,device,model)
        #validate_sim(dgl.unbatch(train_g),pos_embeddings,sampler,device,model)
        #print("num of pos: ", pos_count, " num of neg: ", neg_count)
        #if options.weighted:
            #print('alpha = ',model.alpha)
        #validate_sim([val_g], pos_embeddings,sampler, device, model)

        val_loss, val_acc = validate(val_graphs, device, model,
                                     mlp, combine,Loss, options.alpha, beta,options)
        #max_F1_score = max(max_F1_score,val_F1_score)
        #validate_sim(val_graphs, pos_embeddings, sampler, device, model,options)
        #validate_sim([dgl.batch(val_graphs)],sampler,device,model)
        #validate_sim(val_graphs, pos_embeddings,sampler, device, model)


        # save the result of current epoch
        with open(os.path.join(options.model_saving_dir, 'res.txt'), 'a') as f:
            f.write(str(round(Train_loss, 8)) + " " + str(round(Train_acc, 3))  + "\n")
            f.write(str(round(val_loss.item(), 3)) + " " + str(round(val_acc, 3)) + "\n")
            f.write('\n')

        judgement = val_acc > max_acc
        #judgement = True
        if judgement:
           max_acc = val_acc
           print("Saving model.... ", os.path.join(options.model_saving_dir))
           if os.path.exists(options.model_saving_dir) is False:
              os.makedirs(options.model_saving_dir)
           with open(os.path.join(options.model_saving_dir, 'model.pkl'), 'wb') as f:
              parameters = options
              pickle.dump((parameters, model,mlp,combine), f)
           print("Model successfully saved")




if __name__ == "__main__":
    seed = 1234
    # th.set_deterministic(True)
    th.manual_seed(seed)
    th.cuda.manual_seed(seed)
    np.random.seed(seed)
    train(get_options())
