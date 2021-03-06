from dataset_quick import Dataset_q
from dataset_dc import Dataset_dc
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
# apply oversampling on the dataset

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
def validate(valid_dataloader,label_name,device,model,mlp,Loss,alpha,beta,train_pos_embeddings,train_embeddings,train_labels):
    total_num, total_loss, correct, fn, fp, tn, tp = 0, 0.0, 0, 0, 0, 0, 0

    error_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fp_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fn_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    num_errors = 0
    runtime = 0
    num_batch = 0
    with th.no_grad():
        for ni, (central_nodes, input_nodes, blocks) in enumerate(valid_dataloader):
            # continue
            # print(in_blocks)
            start = time()
            blocks = [b.to(device) for b in blocks]
            input_features = blocks[0].srcdata["f_input"]
            output_labels = blocks[-1].dstdata[label_name].squeeze(1)
            total_num += len(output_labels)
            embedding = model(blocks, input_features)
            label_hat = topk(embedding,train_embeddings,train_labels)
            pos_mask = output_labels == 1
            neg_mask = output_labels == 0
            pos_embeddings = embedding[pos_mask]
            neg_embeddings = embedding[neg_mask]
            pos_sim,neg_sim,cross_sim = check_sim(pos_embeddings, neg_embeddings,train_pos_embeddings)

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
            errors = blocks[-1].dstdata['ntype'][error_mask]
            if len(errors) != 0 :
                errors = th.argmax(errors,dim=1)
                num_errors += len(errors)
                type_count(errors, error_count)
            fp_mask = (predict_labels != 0 ) & (output_labels == 0)
            fn_mask = (predict_labels == 0) & (output_labels != 0)
            fps = blocks[-1].dstdata['ntype'][fp_mask]
            if len(fps) != 0: fps = th.argmax(fps,dim=1)
            fns = blocks[-1].dstdata['ntype'][fn_mask]
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
    #print("validate time:",runtime)
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
    #print("toral num error",num_errors)
    print("\terror count:",error_count)
    #print("or error ratio:",error_count[5]/num_errors)

    print('\tavg pos sim :{:.4f}, avg cross sim:{:.4f}, avg neg sim:{:.4f}'.format(pos_sim,cross_sim,neg_sim))
    return [loss, acc,recall,precision,F1_score]

def validate_sim(val_graphs,train_pos_embeddings,sampler,device,model):
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

            neg_embeddings = embeddings[neg_mask]
            #print(embeddings)
            #print('-----------------------------------------------------------------------------------------\n\n')
            pos_sim,neg_sim,cross_sim = check_sim(pos_embeddings,neg_embeddings,train_pos_embeddings)

            print('\t   pos sim :{:.4f}, cross_sim:{:.4f}, neg sim:{:.4f}'.format(pos_sim,cross_sim,neg_sim))
            #print('-----------------------------------------------------------------------------------------\n\n')

def check_sim(embeddings,neg_embeddings,train_pos_embeddings):
    total_pos_sim ,total_neg_sim ,total_cross_sim= 0,0,0
    num = embeddings.shape[0]
    for i in range(num):
        sim = (th.sum(th.cosine_similarity(embeddings[i],embeddings,dim=-1))-1)/(num-1)
        if train_pos_embeddings is not None:
            cross_sim = (th.sum(th.cosine_similarity(embeddings[i],train_pos_embeddings,dim=-1)))/len(train_pos_embeddings)
            total_cross_sim += cross_sim
        neg_sim = (th.sum(th.cosine_similarity(embeddings[i], neg_embeddings, dim=-1))) / len(neg_embeddings)
        #distance += d
        total_pos_sim += sim
        total_neg_sim += neg_sim
        #print('sample {}, pos sim:{}, neg sim{}'.format(i,sim,neg_sim))
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

def topk(val_embeddings,train_embeddings,train_labels):
    predict_labels = th.zeros(size=(len(val_embeddings),1))
    for i  in range(len(val_embeddings)):
        cos_sim =th.cosine_similarity(val_embeddings[i],train_embeddings,dim=-1)
        topk_indices = th.topk(cos_sim,100).indices
        topk_labels = train_labels[topk_indices]
        num_pos = len(topk_labels[topk_labels==1])
        num_neg = len(topk_labels[topk_labels == 0])
        predict_labels[i] = 1 if num_pos>num_neg else 0
        print(i)
    return predict_labels
def predict(options):

    th.multiprocessing.set_sharing_strategy('file_system')
    device = th.device("cuda:"+str(options.gpu) if th.cuda.is_available() else "cpu")
    # Dump the preprocessing result to save time!
    #data_path = 'data/region/'
    #data_path = 'data/boundary/'
    freeze = options.freeze
    data_path = options.datapath
    print(data_path)
    train_data_file = os.path.join(data_path,'boom2.pkl')
    val_data_file = os.path.join(data_path,'rocket2.pkl')
    #split_dir = 'splits/rokcet'

    options, model,mlp = load_model(device, options)
    print(options)

    if model is None:
        print("No model, please prepocess first , or choose a pretrain model")
        return
    print(model)
    mlp = mlp.to(device)
    print(mlp)
    # for model with reception , in_nlayers is a list; for others , in_nlayers is an integer

    in_nlayers = options.in_nlayers if isinstance(options.in_nlayers,int) else options.in_nlayers[0]
    out_nlayers = options.out_nlayers if isinstance(options.out_nlayers,int) else options.out_nlayers[0]


    print("Loading data...")
    with open(train_data_file,'rb') as f:
        train_g = pickle.load(f)
        train_graphs = dgl.unbatch(train_g)
        temp = train_graphs[1]
        train_graphs[1] = train_graphs[2]
        train_graphs[2] = temp
        #train_graphs.reverse()
        train_graphs = train_graphs[:options.train_percent]
        # temp = []
        # train_graphs.pop(1)
        train_g = dgl.batch(train_graphs)
    with open(val_data_file,'rb') as f:
        val_g = pickle.load(f)
        # val_graphs =dgl.unbatch(val_g)
        # val_graphs.pop(1)
        # val_g = dgl.batch(val_graphs)


    if options.muldiv:
        label_name = 'mul_o'
    elif options.sub:
        label_name = 'sub_o'
    else:
        label_name = 'adder_o'

    print(train_g.ndata)
    if options.add != -1:
        train_g.ndata['label_o'] = train_g.ndata[label_name]
        val_g.ndata['label_o'] = val_g.ndata[label_name]
        mask_sub_train = train_g.ndata['sub_o']>0
        mask_sub_val = val_g.ndata['sub_o'] > 0
        mask_mul_train = train_g.ndata['mul_o'] > 0
        mask_mul_val = val_g.ndata['mul_o'] > 0
        if options.add ==1:
            train_g.ndata['label_o'][mask_mul_train] = 1
            val_g.ndata['label_o'][mask_mul_val] = 1
        elif options.add == 2:
            train_g.ndata['label_o'][mask_sub_train] = 1
            val_g.ndata['label_o'][mask_sub_val] = 1
        elif options.add == 3:
            train_g.ndata['label_o'][mask_mul_train] = 1
            val_g.ndata['label_o'][mask_mul_val] = 1
            train_g.ndata['label_o'][mask_sub_train] = 1
            val_g.ndata['label_o'][mask_sub_val] = 1

    print(val_g.ndata['ntype'].shape)
    print("num pos1", len(val_g.ndata['label_o'][val_g.ndata['label_o'].squeeze(1) >0]))
    # change_label(train_g,'label_o',options)
    # change_label(val_g,'label_o',options)
    # replaceDFF(train_g)
    # replaceDFF(val_g)
    if not options.muldiv and not options.sub:
        train_g.ndata['position'][train_g.ndata['label_o'].squeeze(-1) == -1] = 100
        val_g.ndata['position'][val_g.ndata['label_o'].squeeze(-1) == -1] = 100
    #train_g.ndata['position'][train_g.ndata['label_o'].squeeze(-1) == 0] = 100
    #val_g.ndata['position'][val_g.ndata['label_o'].squeeze(-1) == 0] = 100

    unlabel_low(train_g, options.unlabel)
    unlabel_low(val_g, options.unlabel)
    if options.add==-1:
        label_name = 'label_o'
        train_g.ndata['label_o'][train_g.ndata['label_o'].squeeze(-1) == 2] = 1
        val_g.ndata['label_o'][val_g.ndata['label_o'].squeeze(-1) == 2] = 1
    train_nodes,pos_count,neg_count = oversample(train_g,options,options.in_dim)

    rates = cal_ratios(neg_count,pos_count)
    print("neg/pos rates",rates)
    train_g.edata['a'] = th.ones(size=(len(train_g.edata['r']),1))

    train_g.ndata['f_input'] = th.ones(size=(train_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
    train_g.ndata['temp'] = th.ones(size=(train_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
    train_g.ndata['ntype2'] = th.argmax(train_g.ndata['ntype'], dim=1).squeeze(-1)
    # print(train_g.ndata['ntype2'].shape,train_g.ndata['ntype2'])
    val_g.ndata['f_input'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
    val_g.ndata['temp'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim), dtype=th.float)

    val_g.ndata['ntype2'] = th.argmax(val_g.ndata['ntype'], dim=1).squeeze(-1)
    val_graphs = dgl.unbatch(val_g)
    sampler = Sampler([None] * (in_nlayers + 1), include_dst_in_src=options.include)


    if in_nlayers == -1:
        in_nlayers = 0
    if out_nlayers == -1:
        out_nlayers = 0
    print(options.degree)
    in_sampler = Sampler([None] * (in_nlayers + 1), include_dst_in_src=options.include)
    out_sampler = Sampler([None] * (out_nlayers + 1), include_dst_in_src=options.include)

    print(len(train_nodes))
    val_nids = th.tensor(range(val_g.number_of_nodes()))
    print(len(val_nids))
    val_nids = val_nids[val_g.ndata['label_o'].squeeze(-1)!=-1]
    print(len(val_nids))
    traindataloader = MyNodeDataLoader(
        True,
        train_g,
        train_nodes,
        in_sampler,
        batch_size=options.batch_size,
        shuffle=False,
        drop_last=False,
    )
    valdataloader = MyNodeDataLoader(
        True,
        val_g,
        val_nids,
        in_sampler,
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
    print('batch_size:',options.batch_size)
    pos_embeddings = th.tensor([]).to(device)
    #pos_masks = th.tensor([])
    neg_embeddings = th.tensor([]).to(device)
    #pos_masks = th.tensor([])
    labels = train_g.ndata[label_name]
    print('start')
    with th.no_grad():
        for ni, (central_nodes, input_nodes, blocks) in enumerate(traindataloader):
            blocks = [b.to(device) for b in blocks]
            input_features = blocks[0].srcdata["f_input"]
            output_labels = blocks[-1].dstdata[label_name].squeeze(1)
            embedding = model(blocks, input_features)
            pos_mask = output_labels == 1
            #pos_masks = th.cat((pos_masks,pos_mask),dim=0)
            pos_embeddings = th.cat((pos_embeddings, embedding[pos_mask]), dim=0)
            neg_mask = output_labels == 0
            #neg_masks = th.cat((neg_masks,neg_mask),dim=0)
            neg_embeddings = th.cat((neg_embeddings, embedding[neg_mask]), dim=0)
        train_embeddings = th.cat((pos_embeddings,neg_embeddings),dim=0)

        #pos_labels = labels[pos_masks]
        #neg_labels = labels[neg_masks]
        #print(len(pos_labels),th.sum(pos_labels))
        #print(len(neg_labels), th.sum(neg_labels))
        print('predict...')
        val_loss, val_acc, val_recall, val_precision, val_F1_score = validate(valdataloader, label_name, device, model,
                                                                              mlp, Loss, options.alpha, beta,
                                                                              pos_embeddings,train_embeddings,labels)
        validate_sim(val_graphs, pos_embeddings, sampler, device, model)
    exit()
    print(options.alpha)
    
    max_val_recall, max_val_precision = 0.0,0.0
    print("Start training")
    print(len(traindataloader))
    pre_loss = 100
    stop_score = 0
    max_F1_score = 0
    for epoch in range(options.num_epoch):
        runtime = 0
        total_num,total_loss,correct,fn,fp,tn,tp = 0,0.0,0,0,0,0,0
        pos_count , neg_count =0, 0
        pos_embeddings= th.tensor([]).to(device)
        #neg_embeddings = th.tensor([]).to(device)
        for ni, (central_nodes,input_nodes,blocks) in enumerate(traindataloader):

            #continue
            #print(in_blocks)
            # print('freeze gate:',model.conv.gate_functions[11].weight)
            # print('not freeze gate:', model.conv.gate_functions[2].weight)
            #print(mlp.layers[2].weight)
            if ni == len(traindataloader)-1:
                continue
            start_time = time()
            blocks = [b.to(device) for b in blocks]
            input_features = blocks[0].srcdata["f_input"]
            output_labels = blocks[-1].dstdata[label_name].squeeze(1)
            total_num += len(output_labels)
            embedding = model(blocks,input_features)
            pos_mask = output_labels == 1
            pos_embeddings = th.cat((pos_embeddings,embedding[pos_mask]),dim=0)
            #neg_mask = output_labels == 0
            #neg_embeddings = th.cat((neg_embeddings, embedding[neg_mask]), dim=0)
            label_hat = mlp(embedding)

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
            #print(ni,train_loss.item())
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
        total_pos_sim = 0
        num = pos_embeddings.shape[0]
        for i in range(num):
            sim = (th.sum(th.cosine_similarity(pos_embeddings[i], pos_embeddings, dim=-1)) - 1) / (num - 1)
            total_pos_sim += sim

        # if is_FuncGCN1:
        #     print(model.GCN1.conv.gate_functions[13].weight)
        print("epoch[{:d}]".format(epoch))
        print("training runtime: ",runtime)
        print("  train:")
        print("\ttp:", tp, " fp:", fp, " fn:", fn, " tn:", tn, " precision:", round(Train_precision,3))
        print("\tloss:{:.8f}, acc:{:.3f}, recall:{:.3f}, F1 score:{:.3f}".format(Train_loss,Train_acc,Train_recall,Train_F1_score))
        print('\tavg pos_sim:{:.4f}'.format(total_pos_sim.item() / len(pos_embeddings)))
        #validate_sim([train_g],sampler,device,model)
        #validate_sim(dgl.unbatch(train_g),pos_embeddings,sampler,device,model)
        #print("num of pos: ", pos_count, " num of neg: ", neg_count)
        #if options.weighted:
            #print('alpha = ',model.alpha)
        #validate_sim([val_g], pos_embeddings,sampler, device, model)

        val_loss, val_acc, val_recall, val_precision, val_F1_score = validate(valdataloader, label_name, device, model,
                                                                              mlp, Loss, options.alpha, beta,pos_embeddings)
        validate_sim(val_graphs, pos_embeddings, sampler, device, model)
        #validate_sim([dgl.batch(val_graphs)],sampler,device,model)
        #validate_sim(val_graphs, pos_embeddings,sampler, device, model)

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
              pickle.dump((parameters, model,mlp), f)
           print("Model successfully saved")




if __name__ == "__main__":
    seed = 1234
    # th.set_deterministic(True)
    th.manual_seed(seed)
    th.cuda.manual_seed(seed)
    np.random.seed(seed)
    predict(get_options())
