from dataset_quick import Dataset_q
from dataset_dc import Dataset_dc
from options import get_options
from model import *
from unity import CV_plot
import dgl
import pickle
import numpy as np
import os
from MyDataLoader_bag import *
from time import time
from random import shuffle

# apply oversampling on the dataset
def DAG2UDG(g):
    edges = g.edges()
    reverse_edges = (edges[1],edges[0])
    new_edges = (th.cat((edges[0],reverse_edges[0])),th.cat((edges[1],reverse_edges[1])))
    udg =  dgl.graph(new_edges,num_nodes=g.num_nodes())
    # if options.gat:
    #     udg.add_edges(udg.nodes(),udg.nodes())
    for key, value in g.ndata.items():
        # print(key,value)
        udg.ndata[key] = value

    udg.edata['direction'] = th.cat((th.zeros(size=(1,g.number_of_edges())).squeeze(0),th.ones(size=(1,g.number_of_edges())).squeeze(0)))
    print('edge attribute')
    print(udg.edata['direction'])
    # for key, value in g.edata.items():
    #     value = th.sum(value,dim=1)
    #     print(key,value)
        #udg.edata[key] = th.cat((value,value))

    return udg

def oversample(g,options):
    print("oversampling dataset......")
    #print(save_file)

    print("total number of nodes: ", g.num_nodes())

    ratio = 1

    nodes = th.tensor(range(g.num_nodes()))

    if options.region:
        labels = g.ndata['label_ad']
    elif options.label == 'in':
        labels = g.ndata['label_i']
    elif options.label == 'out':
        labels = g.ndata['label_o']


    else:
        print("wrong label type")
        return
    mask_pos = (labels != 0).squeeze(1)

    mask_neg = (labels == 0).squeeze(1)
    pos_nodes = nodes[mask_pos].numpy().tolist()
    neg_nodes = nodes[mask_neg].numpy().tolist()
    shuffle(pos_nodes)
    shuffle(neg_nodes)
    pos_size = len(pos_nodes)
    neg_size = len(neg_nodes)

    ratio = float(neg_size) / float(pos_size)
    print("ratio=", ratio)


    pos_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    neg_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    pos_types = g.ndata['ntype'][pos_nodes]
    neg_types = g.ndata['ntype'][neg_nodes]
    pos_types = th.argmax(pos_types, dim=1)
    neg_types = th.argmax(neg_types, dim=1)
    type_count(pos_types, pos_count)
    type_count(neg_types, neg_count)

    print("train pos count:", pos_count)
    print("train neg count:", neg_count)
    rates = cal_ratios(neg_count, pos_count)
    print(rates)

    train_nodes = pos_nodes.copy()
    train_nodes.extend(neg_nodes)

    ratios = []
    for type in range(get_options().in_dim):
        pos_mask = pos_types == type
        neg_mask = neg_types == type
        pos_nodes_n = th.tensor(pos_nodes)[pos_mask].numpy().tolist()
        neg_nodes_n = th.tensor(neg_nodes)[neg_mask].numpy().tolist()
        if len(pos_nodes_n) == 0: ratio = 1
        else: ratio = len(neg_nodes_n) / len(pos_nodes_n)
        ratios.append(ratio)
        if ratio >options.os_rate : ratio = options.os_rate
        #ratio = options.os_rate
        if options.balanced and ratio!=0:
            if ratio > 1:
                short_nodes = pos_nodes_n
            else:
                short_nodes = neg_nodes_n
                ratio = 1 / ratio
            short_len = len(short_nodes)
            while ratio > 1:
                shuffle(short_nodes)
                train_nodes.extend(short_nodes[:int(short_len * min(1, ratio - 1))])
                ratio -= 1
    print("ratios:",ratios)
    return train_nodes,pos_count, neg_count


def preprocess(data_path,device,options):
    #datapaths = ['../dataset/test/ICCAD2014/v/']
    # datapaths = ["../dc/boom/implementation/"]
    #save_file = 'iog_dc_cd5.pkl'

    Dataset = Dataset_dc
    in_dim = get_options().in_dim
    nlabels = options.nlabels
    label2id = {}
    if os.path.exists(data_path) is False:
        os.makedirs(data_path)
    train_data_file = os.path.join(data_path, 'boom2.pkl')
    val_data_file = os.path.join(data_path, 'rocket2.pkl')

    if os.path.exists(val_data_file) is False:
        datapaths = ["../dc/rocket/implementation/"]
        th.multiprocessing.set_sharing_strategy('file_system')
        #print(dataset_not_edge.Dataset_n)
        dataset = Dataset("Rocket",datapaths,label2id)
        g = dataset.batch_graph
        #print(g.ndata)
        print(g.ndata)
        #print(g.edata['r'])
        with open(val_data_file,'wb') as f:
            pickle.dump(g,f)
    if os.path.exists(train_data_file) is False:
        datapaths = ["../dc/boom/implementation/"]
        th.multiprocessing.set_sharing_strategy('file_system')
        #print(dataset_not_edge.Dataset_n)
        dataset = Dataset("BoomCore",datapaths,label2id)
        g = dataset.batch_graph
        #print(g.ndata)
        print(g.ndata)
        #print(g.edata['r'])
        with open(train_data_file,'wb') as f:
            pickle.dump(g,f)

        #split_data(g,split_save_file,options)
        # with open(save_file, 'rb') as f:
        #     g = pickle.load(f)
        # print(g.edata)

    out_dim1 = options.out_dim
    out_dim2 = out_dim1
    hidden_dim1 = options.hidden_dim
    hidden_dim2 = hidden_dim1
    print(label2id)
    if len(label2id) != 0:
        with open(os.path.join(data_path,'label2id.pkl'),'wb') as f:
            pickle.dump(label2id,f)
    if options.pre_train :
        with open(os.path.join(options.pre_model_dir,'model.pkl'),'rb') as f:
            _,classifier = pickle.load(f)
    else:
        if options.gat:
           network1 = GAT
           network2 = network1
        elif options.rgcn:
            network1 = RGCN
            network2 = network1
        elif options.inception:
            network1 = InceptionBlock
            network2 = network1
        elif options.gin:
            network1 = GIN
            network2 = network1
        elif options.gnn:
            network1 = GNN_1l
            network2 = network1
        elif options.function:
            network1 = FuncGCN
            network2 = GCN
            out_dim2 = 256
            hidden_dim2 = 512
        else:
           network1 = GCN
           network2 = network1
           if options.rel:
               network1 = RelGCN
               network2 = network1
        #print(network)
        if options.inception is False:
            if isinstance(options.in_nlayers, int):
                in_nlayers = options.in_nlayers
            else:
                in_nlayers = options.in_nlayers[0]
            if isinstance(options.out_nlayers, int):
                out_nlayers = options.out_nlayers
            else:
                out_nlayers = options.out_nlayers[0]
        else:
            in_nlayers = options.in_nlayers
            out_nlayers = options.out_nlayers
        if in_nlayers == -1:
            model1 = None
        else:
            model1 = network1(
                label = options.label,
                include = options.include,
                device=device,
                in_dim=in_dim,
                hidden_dim=hidden_dim1,
                out_dim=out_dim1,
                num_heads=options.num_heads,
                n_layers=in_nlayers,
                dropout=options.gcn_dropout,
                aggregation_type=options.agg_type,
                combine_type = options.combine,
            )

        if out_nlayers == -1:
            model2 = None
        else:
            model2 = network2(
                label=options.label,
                include =options.include,
                device=device,
                in_dim=in_dim,
                hidden_dim=hidden_dim2,
                out_dim=out_dim2,
                num_heads=options.num_heads,
                n_layers=out_nlayers,
                dropout=options.gcn_dropout,
                aggregation_type=options.agg_type,
                combine_type=options.combine,
            )


        if options.weighted:
            classifier = WBClassifier(model1, model2, out_dim=nlabels, n_fcn=options.n_fcn,combine_type=options.bi_combine,dropout=options.mlp_dropout).to(device)

        else: classifier = BiClassifier(model1,model2, out_dim=nlabels, n_fcn=options.n_fcn,combine_type=options.bi_combine,dropout=options.mlp_dropout).to(device)
    print(classifier)
    print("creating model in:",options.model_saving_dir)
    if os.path.exists(options.model_saving_dir) is False:
        os.makedirs(options.model_saving_dir)
        with open(os.path.join(options.model_saving_dir, 'model.pkl'), 'wb') as f:
            parameters = options
            pickle.dump((parameters, classifier), f)
        with open(os.path.join(options.model_saving_dir, 'res.txt'), 'w') as f:
            pass
def load_model(device,options):
    if options.pre_train is True:
        model_dir = options.pre_model_dir
    else:
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
def validate(valid_dataloader,label_name,device,model,Loss,alpha,beta,is_FuncGCN1,is_FuncGCN2):
    print('beta:',beta)
    total_num, total_loss, correct, fn, fp, tn, tp = 0, 0.0, 0, 0, 0, 0, 0

    error_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fp_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fn_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    num_errors = 0
    runtime = 0
    num_batch = 0
    with th.no_grad():
        for vni, (central_nodes,in_input_nodes,in_blocks,out_input_nodes,out_blocks) in enumerate(
                valid_dataloader
        ):
            num_batch += 1
            start = time()
            in_blocks = [b.to(device) for b in in_blocks]

            out_blocks = [b.to(device) for b in out_blocks]
            if is_FuncGCN1:
                in_input_features = in_blocks[0].srcdata["f_input"]
            else:
                in_input_features = in_blocks[0].srcdata["ntype"]
            if is_FuncGCN2:
                out_input_features = out_blocks[0].srcdata["f_input"]
            else:
                out_input_features = out_blocks[0].srcdata["ntype"]
            #print(out_blocks[0],len(out_input_features))
            # print(blocks[-1].dstdata["label")
            output_labels = in_blocks[-1].dstdata[label_name].squeeze(1)
            total_num += len(output_labels)
            label_hat = model(in_blocks, in_input_features, out_blocks, out_input_features)
            if get_options().nlabels != 1:
                pos_prob = nn.functional.softmax(label_hat, 1)[:, 1]
            else:
                pos_prob = th.sigmoid(label_hat)
            #print(pos_prob)
            pos_prob[pos_prob >= beta] = 1
            pos_prob[pos_prob < beta] = 0
            # pos_prob = label_hat
            predict_labels = pos_prob
            end = time()
            runtime += end - start
            if alpha != 1 :
                pos_index = (output_labels != 0)
                neg_index = (output_labels == 0)
                pos_loss = Loss(label_hat[pos_index],output_labels[pos_index])*pos_index.sum().item()
                neg_loss = Loss(label_hat[neg_index], output_labels[neg_index]) * neg_index.sum().item()
                val_loss = (alpha*pos_loss+neg_loss) / len(output_labels)
            else: val_loss = Loss(label_hat, output_labels)

            total_loss += val_loss.item() * len(output_labels)

            error_mask = predict_labels !=output_labels
            errors = out_blocks[-1].dstdata['ntype'][error_mask]
            if len(errors) != 0 :
                errors = th.argmax(errors,dim=1)
                num_errors += len(errors)
                type_count(errors, error_count)
            fp_mask = (predict_labels != 0 ) & (output_labels == 0)
            fn_mask = (predict_labels == 0) & (output_labels != 0)
            fps = out_blocks[-1].dstdata['ntype'][fp_mask]
            if len(fps) != 0: fps = th.argmax(fps,dim=1)
            fns = out_blocks[-1].dstdata['ntype'][fn_mask]
            if len(fns) != 0: fns = th.argmax(fns, dim=1)
            type_count(fps,fp_count)
            type_count(fns,fn_count)

            #print('predict:',predict_labels)
            #print("label:",output_labels)
            correct += (
                    predict_labels == output_labels
            ).sum().item()

            fn += ((predict_labels == 0) & (output_labels != 0)).sum().item()  # ????????????1???????????? 0 ?????????
            tp += ((predict_labels != 0) & (output_labels != 0)).sum().item()  # ????????????1???????????? 1 ?????????
            tn += ((predict_labels == 0) & (output_labels == 0)).sum().item()  # ????????????0???????????? 0 ?????????
            fp += ((predict_labels != 0) & (output_labels == 0)).sum().item()  # ????????????0???????????? 1 ?????????
    print("num batch:",num_batch)
    print("validate time:",runtime)
    loss = total_loss / total_num
    acc = correct / total_num
    recall = 0
    precision = 0
    if tp != 0:
        recall = tp / (tp + fn)
        precision = tp / (tp + fp)
    F1_score = 0
    if precision != 0 or recall != 0:
        F1_score = 2 * recall * precision / (recall + precision)
    print("  validate:")
    print("\ttp:", tp, " fp:", fp, " fn:", fn, " tn:", tn, " precision:", round(precision, 3))
    print("\tloss:{:.3f}, acc:{:.3f}, recall:{:.3f}, F1 score:{:.3f}".format(loss, acc,recall, F1_score))
    print("toral num error",num_errors)
    print("error count:",error_count)
    print("or error ratio:",error_count[5]/num_errors)
    return [loss, acc,recall,precision,F1_score]


def train(options):

    th.multiprocessing.set_sharing_strategy('file_system')
    device = th.device("cuda:"+str(options.gpu) if th.cuda.is_available() else "cpu")
    # Dump the preprocessing result to save time!
    #data_path = 'data/region/'
    data_path = 'data/boundary_complete/'
    train_data_file = os.path.join(data_path,'boom2.pkl')
    val_data_file = os.path.join(data_path,'rocket2.pkl')
    #split_dir = 'splits/rokcet'
    if options.region:
        label_name = 'label_ad'
    elif options.label == 'in':
        label_name = 'label_i'
    else:
        label_name = 'label_o'
    if options.preprocess :
        preprocess(data_path,device,options)
        return
    print(options)
    options, model = load_model(device, options)
    # for i in range(in_nlayers+1):
    #     model.GCN1.layers[i].weight = model.GCN1.layers[i].weight.to(device)
    # for i in range(out_nlayers+1):
    #     model.GCN2.layers[i].weight = model.GCN2.layers[i].weight.to(device)

    if model is None:
        print("No model, please prepocess first , or choose a pretrain model")
        return
    print(model)
    # for model with reception , in_nlayers is a list; for others , in_nlayers is an integer

    in_nlayers = options.in_nlayers if isinstance(options.in_nlayers,int) else options.in_nlayers[0]
    out_nlayers = options.out_nlayers if isinstance(options.out_nlayers,int) else options.out_nlayers[0]


    print("Loading data...")
    with open(train_data_file,'rb') as f:
        train_g = pickle.load(f)
    with open(val_data_file,'rb') as f:
        val_g = pickle.load(f)


    train_nodes,pos_count,neg_count = oversample(train_g,options)

    rates = cal_ratios(neg_count,pos_count)
    print("neg/pos rates",rates)
    train_g.edata['a'] = th.ones(size=(len(train_g.edata['r']),1))

    is_FuncGCN1, is_FuncGCN2 = False,False
    if options.function:
        train_g.ndata['f_input'] = th.ones(size=(train_g.number_of_nodes(), options.hidden_dim),dtype=th.float)
        train_g.ndata['temp'] = th.ones(size=(train_g.number_of_nodes(), options.hidden_dim),dtype=th.float)
        train_g.ndata['ntype2'] = th.argmax(train_g.ndata['ntype'], dim=1).squeeze(-1)
        # print(train_g.ndata['ntype2'].shape,train_g.ndata['ntype2'])
        val_g.ndata['f_input'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim),dtype=th.float)
        val_g.ndata['temp'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim),dtype=th.float)
        val_g.ndata['ntype2'] = th.argmax(val_g.ndata['ntype'], dim=1).squeeze(-1)
    if model.GCN1 is not None and type(model.GCN1) == FuncGCN:
        is_FuncGCN1 = True
        for i in range(options.in_dim):
            model.GCN1.gate_functions[i] = model.GCN1.gate_functions[i].to(device)
    if model.GCN2 is not None and type(model.GCN2) == FuncGCN:
        is_FuncGCN2 = True
        for i in range(options.in_dim):
            model.GCN2.gate_functions[i] = model.GCN2.gate_functions[i].to(device)
    #in_sampler = dgl.dataloading.MultiLayerFullNeighborSampler(in_nlayers + 1)
    if in_nlayers == -1:
        in_nlayers = 0
    if out_nlayers == -1:
        out_nlayers = 0
    print(options.degree)

    in_sampler = Sampler([None] * (in_nlayers + 1),include_dst_in_src=options.include)
    out_sampler =Sampler([None]*(out_nlayers + 1),include_dst_in_src=options.include)
    traindataloader = MyNodeDataLoader(
        False,
        train_g,
        get_reverse_graph(train_g),
        train_nodes,
        in_sampler,
        out_sampler,
        batch_size=options.batch_size,
        shuffle=True,
        drop_last=False,
    )
    valdataloader = MyNodeDataLoader(
        True,
        val_g,
        get_reverse_graph(val_g),
        list(range(val_g.num_nodes())),
        in_sampler,
        out_sampler,
        batch_size=val_g.num_nodes(),
        shuffle=True,
        drop_last=False,
    )

    #print("Data successfully loaded")
    k = options.k
    beta = options.beta
    if options.nlabels!=1 : Loss = nn.CrossEntropyLoss()
    else: Loss = nn.BCEWithLogitsLoss(pos_weight=th.FloatTensor([options.pos_weight]).to(device))
    print(options.nlabels)
    print(Loss)

    optim = th.optim.Adam(
        model.parameters(), options.learning_rate, weight_decay=options.weight_decay
    )
    model.train()
    print(options.alpha)
    
    max_val_recall, max_val_precision = 0.0,0.0
    print("Start training")

    pre_loss = 100
    stop_score = 0
    max_F1_score = 0
    for epoch in range(options.num_epoch):
        runtime = 0
        #options, model = load_model(device, options) 
        #optim = th.optim.Adam(
        #model.parameters(), options.learning_rate, weight_decay=options.weight_decay
        #)
        #model.train()

        total_num,total_loss,correct,fn,fp,tn,tp = 0,0.0,0,0,0,0,0
        pos_count , neg_count =0, 0
        for ni, (central_nodes,in_input_nodes,in_blocks,out_input_nodes,out_blocks) in enumerate(traindataloader):
            #continue
            start_time = time()
            in_blocks = [b.to(device) for b in in_blocks]
            # print("in_block:",in_blocks)
            # print("out_block:",out_blocks)
            out_blocks = [b.to(device) for b in out_blocks]
            #print(out_blocks)
            if is_FuncGCN1:
                in_input_features = in_blocks[0].srcdata["f_input"]
            else:
                in_input_features = in_blocks[0].srcdata["ntype"]
            if is_FuncGCN2:
                out_input_features = out_blocks[0].srcdata["f_input"]
            else:
                out_input_features = out_blocks[0].srcdata["ntype"]
            #print(in_input_features,out_input_features)
            #print(in_input_features)
            #print(blocks[-1].dstdata["label")
            output_labels = in_blocks[-1].dstdata[label_name].squeeze(1) if len(in_blocks)!=0 else out_blocks[-1].dstdata[label_name].squeeze(1)
            total_num += len(output_labels)
            label_hat = model(in_blocks,in_input_features,out_blocks,out_input_features)
            #print(ni)
            #print(model.GCN1.gate_functions[8])
            # logp = nn.functional.log_softmax(label_hat, 1)
            # predict_labels = logp.max(dim=1)[1]
            if get_options().nlabels != 1:
                pos_prob = nn.functional.softmax(label_hat, 1)[:, 1]
            else:
                pos_prob = th.sigmoid(label_hat)
            pos_prob[pos_prob >= beta] = 1
            pos_prob[pos_prob < beta] = 0
            # pos_prob = label_hat

            predict_labels = pos_prob
            #print(nn.functional.sigmoid(label_hat),output_labels)
            #print(label_hat,output_labels)
            if options.alpha != 1 :
                pos_index = (output_labels != 0)
                neg_index = (output_labels == 0)
                pos_count += len(output_labels[pos_index])
                neg_count += len(output_labels[neg_index])
                pos_loss = Loss(label_hat[pos_index],output_labels[pos_index])*pos_index.sum().item()
                neg_loss = Loss(label_hat[neg_index], output_labels[neg_index]) * neg_index.sum().item()
                train_loss = (options.alpha*pos_loss+neg_loss) / len(output_labels)
            else:
                train_loss = Loss(label_hat, output_labels)
            total_loss += train_loss.item() * len(output_labels)
            endtime = time()
            runtime += endtime - start_time

            # train_loss += loss
            correct += (
                    predict_labels == output_labels
            ).sum().item()
            fn += ((predict_labels == 0) & (output_labels != 0)).sum().item()  # ????????????1???????????? 0 ?????????
            tp += ((predict_labels != 0) & (output_labels != 0)).sum().item()  # ????????????1???????????? 1 ?????????
            tn += ((predict_labels == 0) & (output_labels == 0)).sum().item()  # ????????????0???????????? 0 ?????????
            fp += ((predict_labels != 0) & (output_labels == 0)).sum().item()  # ????????????0???????????? 1 ?????????

            start_time = time()
            optim.zero_grad()
            train_loss.backward()
           # print(model.GCN1.layers[0].attn_n.grad)
            optim.step()
            endtime = time()
            runtime += endtime-start_time

        Train_loss = total_loss / total_num

        if Train_loss > pre_loss:
            stop_score += 1
            if stop_score >= 2:
                print('Early Stop!')
                #exit()
        else:
            stop_score = 0
            pre_loss = Train_loss
        Train_acc = correct / total_num
        Train_recall = 0
        Train_precision = 0
        if tp != 0:
            Train_recall = tp / (tp + fn)
            Train_precision = tp / (tp + fp)
        Train_F1_score = 0
        if Train_precision != 0 or Train_recall != 0:
            Train_F1_score = 2 * Train_recall * Train_precision / (Train_recall + Train_precision)

        print("epoch[{:d}]".format(epoch))
        print("training runtime: ",runtime)
        print("  train:")
        print("\ttp:", tp, " fp:", fp, " fn:", fn, " tn:", tn, " precision:", round(Train_precision,3))
        print("\tloss:{:.8f}, acc:{:.3f}, recall:{:.3f}, F1 score:{:.3f}".format(Train_loss,Train_acc,Train_recall,Train_F1_score))
        #if options.weighted:
            #print('alpha = ',model.alpha)
        print("num of pos: ",pos_count," num of neg: ",neg_count)
        val_loss, val_acc, val_recall,val_precision, val_F1_score = validate(valdataloader, label_name,device, model, Loss,options.alpha,beta,is_FuncGCN1,is_FuncGCN2)
        if epoch % 1 == 0 and get_options().rel:
            if get_options().attn_type == 'node': print(model.GCN1.layers[0].fc_attn_n.weight)
            #print(model.GCN1.layers[0].attn_e.grad)
            else: print(model.GCN1.layers[0].fc_attn_e.weight)
        if options.weighted:
            print('alpha:',model.fc_combine.weight)
        # save the result of current epoch
        with open(os.path.join(options.model_saving_dir, 'res.txt'), 'a') as f:
            f.write(str(round(Train_loss, 8)) + " " + str(round(Train_acc, 3)) + " " + str(
                round(Train_recall, 3)) + " " + str(round(Train_precision,3))+" " + str(round(Train_F1_score, 3)) + "\n")
            f.write(str(round(val_loss, 3)) + " " + str(round(val_acc, 3)) + " " + str(
                round(val_recall, 3)) + " "+ str(round(val_precision,3))+" " + str(round(val_F1_score, 3)) + "\n")
            f.write('\n')

        judgement = val_F1_score > max_F1_score
        judgement = True
        if judgement:
           max_F1_score = val_F1_score
           print("Saving model.... ", os.path.join(options.model_saving_dir))
           if os.path.exists(options.model_saving_dir) is False:
              os.makedirs(options.model_saving_dir)
           with open(os.path.join(options.model_saving_dir, 'model.pkl'), 'wb') as f:
              parameters = options
              pickle.dump((parameters, model), f)
           print("Model successfully saved")




if __name__ == "__main__":
    seed = 1234
    # th.set_deterministic(True)
    th.manual_seed(seed)
    th.cuda.manual_seed(seed)
    np.random.seed(seed)
    train(get_options())
