
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
from random import shuffle

def preprocess(data_path,device,options):
    #datapaths = ['../dataset/test/ICCAD2014/v/']
    # datapaths = ["../dc/boom/implementation/"]
    #save_file = 'iog_dc_cd5.pkl'

    #Dataset = Dataset_dc
    in_dim = get_options().in_dim
    nlabels = options.nlabels
    label2id = {}
    if not os.path.exists(data_path) :
        os.makedirs(data_path)
    data_file = os.path.join(data_path, 'i{}.pkl'.format(options.num_input))
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
        #print(dataset_not_edge.Dataset_n)
        dataset = Dataset_gcl(datapath)
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
            _,classifier = pickle.load(f)
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
def validate(valid_dataloader,label_name,device,model,Loss,alpha,beta,depth,width,num_aug,po_depths,query_embedding,thredshold):

    total_num, total_loss, correct, fn, fp, tn, tp = 0, 0.0, 0, 0, 0, 0, 0
    runtime = 0
    num_batch = 0
    with th.no_grad():
        for vni, (central_nodes,input_nodes,blocks) in enumerate(
                valid_dataloader
        ):
            num_batch += 1
            start = time()
            target_embeddings = []
            blocks = [b.to(device) for b in blocks]
            input_features = blocks[0].srcdata["ntype"]
            for i in range(depth):
                target_embeddings.append(model(blocks[i:],blocks[i].srcdata['ntype']))
            #query_embedding = model(train_blocks,train_blocks[0].srcdata['ntype'])
            total_num = len(target_embeddings[0])
            target_indexs = th.tensor(range(total_num))
            predicts = th.zeros(total_num, dtype=th.long).to(device)
            for i in range(num_aug):
                start = i*width
                for j in range(width):
                    if po_depths[start+j] in (0, 1) :
                        continue
                    index = blocks[-1].dstdata['label_o'].squeeze(1) == 1
                    #print(index)
                    sim1 = th.cosine_similarity(query_embedding[start+j],target_embeddings[depth-po_depths[start+j]][index],dim=-1)
                    #print(len(sim1),sim1,th.max(sim1))

                    sim = th.cosine_similarity(query_embedding[start+j],
                                               target_embeddings[depth-po_depths[start+j]],dim=-1)
                    #print(target_indexs[sim>thredshold])
                    predicts [target_indexs[sim>thredshold]] = 1

            output_labels = blocks[-1].dstdata['label_o'].squeeze(1)

            predict_labels = predicts
            end = time()
            runtime += end - start
            # if alpha != 1 :
            #     pos_index = (output_labels != 0)
            #     neg_index = (output_labels == 0)
            #     pos_loss = Loss(label_hat[pos_index],output_labels[pos_index])*pos_index.sum().item()
            #     neg_loss = Loss(label_hat[neg_index], output_labels[neg_index]) * neg_index.sum().item()
            #     val_loss = (alpha*pos_loss+neg_loss) / len(output_labels)
            # else: val_loss = Loss(label_hat, output_labels)
            #
            # total_loss += val_loss.item() * len(output_labels)
            #
            # error_mask = predict_labels !=output_labels
            # errors = blocks[-1].dstdata['ntype'][error_mask]
            # if len(errors) != 0 :
            #     errors = th.argmax(errors,dim=1)
            #     num_errors += len(errors)
            #     type_count(errors, error_count)
            # fp_mask = (predict_labels != 0 ) & (output_labels == 0)
            # fn_mask = (predict_labels == 0) & (output_labels != 0)
            # fps = blocks[-1].dstdata['ntype'][fp_mask]
            # if len(fps) != 0: fps = th.argmax(fps,dim=1)
            # fns = blocks[-1].dstdata['ntype'][fn_mask]
            # if len(fns) != 0: fns = th.argmax(fns, dim=1)
            # type_count(fps,fp_count)
            # type_count(fns,fn_count)

            #print('predict:',predict_labels)
            #print("label:",output_labels)
            correct += (
                    predict_labels == output_labels
            ).sum().item()

            fn += ((predict_labels == 0) & (output_labels != 0)).sum().item()  # 原标签为1，预测为 0 的总数
            tp += ((predict_labels != 0) & (output_labels != 0)).sum().item()  # 原标签为1，预测为 1 的总数
            tn += ((predict_labels == 0) & (output_labels == 0)).sum().item()  # 原标签为0，预测为 0 的总数
            fp += ((predict_labels != 0) & (output_labels == 0)).sum().item()  # 原标签为0，预测为 1 的总数
    print("num batch:",num_batch)
    print("validate time:",runtime)
    #loss = total_loss / total_num
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
    print("\tacc:{:.3f}, recall:{:.3f}, F1 score:{:.3f}".format(acc,recall, F1_score))
    return [acc,recall,precision,F1_score]

def get_neg_nodes(g,target='label_o'):
    labels = g.ndata[target].squeeze(1)
    index = th.tensor(range(g.number_of_nodes()))
    neg_nodes = index[labels==0]

    return neg_nodes

def get_pos_pairs(width,num_aug):
    pos_pairs = []
    for i in range(width):
        start_id = i*num_aug
        for j in range(num_aug):
            for k in range(j+1,num_aug):
                pos_pairs.append((j+start_id,k+start_id))
    return pos_pairs

def NCEloss(pos1,pos2,neg,tao):
    pos_similarity  = th.cosine_similarity(pos1,pos2,dim=-1)
    neg_similarity = th.cosine_similarity(pos1,neg,dim=-1)
    loss = -1*th.log(
                th.exp(pos_similarity/tao)
                /
                (th.sum(th.exp(neg_similarity/tao))-1)
    )
    return loss

def contrastive_loss(pos_pair,neg_embeddings1,neg_embeddings2,tao):
    pos_sim = th.cosine_similarity(pos_pair[0],pos_pair[1],dim=-1)
    #print(pos_sim)
    neg_sim1 = th.cosine_similarity(pos_pair[0],neg_embeddings1,dim=-1)
    #print(neg_sim1)
    neg_sim2 = th.cosine_similarity(pos_pair[1], neg_embeddings2, dim=-1)
    loss1 = -1*th.log(
                th.exp(pos_sim/tao)
                /
                ( th.exp(pos_sim/tao) + th.sum(th.exp(neg_sim1/tao)) )
    )
    loss2 = -1 * th.log(
        th.exp(pos_sim / tao)
        /
        (th.exp(pos_sim / tao) + th.sum(th.exp(neg_sim2 / tao)))
    )
    return (loss1+loss2)/2

def check(g,pos,depth):
    for po in pos:
        d = g.ndata['depth'][po]

        sampler = Sampler(depth * [None], include_dst_in_src=False)
        blocks = sampler.sample_blocks(g,[po])
        blocks = [b for b in blocks if b.num_src_nodes()!=0]
        print('depth=',d.item(),len(blocks))
def train(options):

    th.multiprocessing.set_sharing_strategy('file_system')
    device = th.device("cuda:"+str(options.gpu) if th.cuda.is_available() else "cpu")
    # Dump the preprocessing result to save time!
    # for region detecion, the data_path is 'data/region', for boundary(io) detection, the data_path is 'data/boundary'
    data_path = '../data/gcl/'
    train_data_file = os.path.join(data_path,'i{}.pkl'.format(options.num_input))
    # neg_data_file = os.path.join(data_path, 'rocket2.pkl')
    # val_data_file = os.path.join(data_path,'rocket2.pkl')
    #split_dir = 'splits/rokcet'
    in_nlayers,out_nlayers = options.in_nlayers,options.out_nlayers
    if options.preprocess :
        preprocess(data_path,device,options)
        return
    print(options)

    print("Loading data...")

    with open(train_data_file,'rb') as f:
        train_g,POs,depth = pickle.load(f)
    train_g.ndata['f_input'] = th.ones(size=(train_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
    train_g.ndata['temp'] = th.ones(size=(train_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
    train_g.ndata['ntype2'] = th.argmax(train_g.ndata['ntype'], dim=1).squeeze(-1)

    PO_nids = list(POs.keys())
    #PO_depths = list(POs.values())
    original_nids, aug_nids= [],[]
    for i in range(0,len(PO_nids),3):
        original_nids.append(PO_nids[i])
        aug_nids.append(PO_nids[i+1])
        aug_nids.append(PO_nids[i+2])
    # print(POs)
    # print('original nids:',original_nids)
    # print('aug nids:',aug_nids)
    print(len(POs))
    print('num samples',len(aug_nids))
    if options.gat:
        add_self_loop = True
    else:
        add_self_loop = False
    sampler = Sampler(depth*[options.degree],include_dst_in_src=options.include,add_self_loop=add_self_loop)

    train_blocks = sampler.sample_blocks(train_g,POs)
    train_blocks = [b.to(device) for b in train_blocks]
    pos_pairs = None

    print(train_blocks)
    # print(pos_pairs)
    #print(po_depths)
    #check(train_g,POs,depth)

    dataloader = MyNodeDataLoader(
        False,
        train_g,
        aug_nids,
        sampler,
        batch_size=options.batch_size,
        shuffle=False,
        drop_last=False,
    )

    # for (central_nodes,input_nodes,blocks,reverse_input_nodes,reverse_blocks) in dataloader:
    #     dataset.append((central_nodes,input_nodes,blocks,reverse_input_nodes,reverse_blocks))
    # total_size = len(dataset)
    # valid_end = int(total_size/options.k)
    # val_data = dataset[:valid_end]
    # train_data = dataset[valid_end:]

    print("Data successfully loaded")
    k = options.k
    beta = options.beta
    # if options.nlabels!=1 : Loss = nn.CrossEntropyLoss()
    # else: Loss = nn.BCEWithLogitsLoss(pos_weight=th.FloatTensor([options.pos_weight]).to(device))
    #print(options.nlabels)
    #print(Loss)
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
    for epoch in range(options.num_epoch):
        runtime = 0
        #options, model = load_model(device, options) 
        #optim = th.optim.Adam(
        #model.parameters(), options.learning_rate, weight_decay=options.weight_decay
        #)
        #model.train()

        total_num,total_loss,correct,fn,fp,tn,tp = 0,0.0,0,0,0,0,0
        pos_count , neg_count =0, 0
        for ni, (central_nodes,input_nodes,blocks) in enumerate(dataloader):
            #continue
            start_time = time()
            neg_embeddings = []
            blocks = [b.to(device) for b in blocks]
            print(blocks)
            loss = 0
            # print("in_block:",in_blocks)
            #print("out_block:",blocks)
            #print(out_blocks)
            #neg_features = blocks[0].srcdata["ntype"]

            #print(blocks[-1].dstdata["label")
            #output_labels = blocks[-1].dstdata[label_name].squeeze(1)
            #total_num += len(output_labels)
            embeddings = model(blocks, blocks[0].srcdata['f_input'])
            for i in range(0,len(embeddings),2):
                loss += NCEloss(embeddings[i],embeddings[i+1],embeddings,options.tao)
                loss += NCEloss(embeddings[i+1], embeddings[i], embeddings, options.tao)
            loss = loss / len(embeddings)

            total_num +=1
            # label_hat = model(blocks,input_features)
            # logp = nn.functional.log_softmax(label_hat, 1)
            # predict_labels = logp.max(dim=1)[1]
            # if get_options().nlabels != 1:
            #     pos_prob = nn.functional.softmax(label_hat, 1)[:, 1]
            # else:
            #     pos_prob = th.sigmoid(label_hat)
            # pos_prob[pos_prob >= beta] = 1
            # pos_prob[pos_prob < beta] = 0
            # # pos_prob = label_hat
            # predict_labels = pos_prob
            #print(nn.functional.sigmoid(label_hat),output_labels)
            #print(label_hat,output_labels)
            # if options.alpha != 1 :
            #     pos_index = (output_labels != 0)
            #     neg_index = (output_labels == 0)
            #     pos_count += len(output_labels[pos_index])
            #     neg_count += len(output_labels[neg_index])
            #     pos_loss = Loss(label_hat[pos_index],output_labels[pos_index])*pos_index.sum().item()
            #     neg_loss = Loss(label_hat[neg_index], output_labels[neg_index]) * neg_index.sum().item()
            #     train_loss = (options.alpha*pos_loss+neg_loss) / len(output_labels)
            # else:
            #     train_loss = Loss(label_hat, output_labels)
            total_loss += loss
            endtime = time()
            runtime += endtime - start_time

            # train_loss += loss
            # correct += (
            #         predict_labels == output_labels
            # ).sum().item()
            # fn += ((predict_labels == 0) & (output_labels != 0)).sum().item()  # 原标签为1，预测为 0 的总数
            # tp += ((predict_labels != 0) & (output_labels != 0)).sum().item()  # 原标签为1，预测为 1 的总数
            # tn += ((predict_labels == 0) & (output_labels == 0)).sum().item()  # 原标签为0，预测为 0 的总数
            # fp += ((predict_labels != 0) & (output_labels == 0)).sum().item()  # 原标签为0，预测为 1 的总数
            print(loss.item())
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
            runtime += endtime-start_time

        Train_loss = total_loss / total_num

        # if Train_loss > pre_loss:
        #     stop_score += 1
        #     if stop_score >= 2:
        #         print('Early Stop!')
        #         #exit()
        # else:
        #     stop_score = 0
        #     pre_loss = Train_loss
        # Train_acc = correct / total_num
        # Train_recall = 0
        # Train_precision = 0
        # if tp != 0:
        #     Train_recall = tp / (tp + fn)
        #     Train_precision = tp / (tp + fp)
        # Train_F1_score = 0
        # if Train_precision != 0 or Train_recall != 0:
        #     Train_F1_score = 2 * Train_recall * Train_precision / (Train_recall + Train_precision)

        print("epoch[{:d}]".format(epoch))
        print("training runtime: ",runtime)
        print("  train:")
        print("loss:{:.8f}".format(Train_loss.item()))
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
        #     #print(model.GCN1.layers[0].attn_e.grad)
        #     #else: print(model.GCN1.layers[0].fc_attn_e.weight)
        #     print(model.GCN.layers[0].alpha)
        # if options.weighted:
        #     print('alpha:',model.fc_combine.weight)
        # # save the result of current epoch
        with open(os.path.join(options.model_saving_dir, 'res.txt'), 'a') as f:
            # f.write(str(round(Train_loss, 3)) + " " + str(round(Train_acc, 3)) + " " + str(
            #     round(Train_recall, 3)) + " " + str(round(Train_precision,3))+" " + str(round(Train_F1_score, 3)) + "\n")
            # f.write(str(round(val_loss, 3)) + " " + str(round(val_acc, 3)) + " " + str(
            #     round(val_recall, 3)) + " "+ str(round(val_precision,3))+" " + str(round(val_F1_score, 3)) + "\n")
            f.write(str(round(Train_loss.item(), 3)) )
            f.write('\n')

        #judgement = val_F1_score > max_F1_score
        judgement = True
        if judgement:
           #max_F1_score = val_F1_score
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
