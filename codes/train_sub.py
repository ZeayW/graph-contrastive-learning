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
from sampling import *

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

    print(label2id)
    if len(label2id) != 0:
        with open(os.path.join(data_path,'label2id.pkl'),'wb') as f:
            pickle.dump(label2id,f)
    if options.pre_train :
        with open(os.path.join(options.pre_model_dir,'model.pkl'),'rb') as f:
            _,classifier = pickle.load(f)
    else:
        if options.gat:
           network = GAT
        elif options.rgcn:
            network = RGCN
        elif options.inception:
            network = InceptionBlock
        elif options.gin:
            network = GIN
        else:
           network = GCN
           if options.rel:
               network = RelGCN
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
        if isinstance(options.num_heads, int):
            num_heads = [options.num_heads,options.num_heads]
        else:
            num_heads = options.num_heads
        model = network(
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
        ).to(device)

    print("creating model in:",options.model_saving_dir)
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
def validate(valid_dataloader,label_name,device,model,Loss,alpha,beta):
    print('beta:',beta)
    total_num, total_loss, correct, fn, fp, tn, tp = 0, 0.0, 0, 0, 0, 0, 0
    # valid_loss = []
    # vcorrect = 0
    # fn = 0
    # tp = 0
    # tn = 0
    # fp = 0
    # total_num = 0

    error_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fp_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fn_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    num_errors = 0
    runtime = 0
    num_batch = 0
    with th.no_grad():
        for vni, (central_nodes,input_nodes,blocks) in enumerate(
                valid_dataloader
        ):
            num_batch += 1
            start = time()
            blocks = [b.to(device) for b in blocks]
            input_features = blocks[0].srcdata["ntype"]

            #print(out_blocks[0],len(out_input_features))
            # print(blocks[-1].dstdata["label")
            output_labels = blocks[-1].dstdata[label_name].squeeze(1)
            total_num += len(output_labels)
            label_hat = model(blocks, input_features)
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

            fn += ((predict_labels == 0) & (output_labels != 0)).sum().item()  # 原标签为1，预测为 0 的总数
            tp += ((predict_labels != 0) & (output_labels != 0)).sum().item()  # 原标签为1，预测为 1 的总数
            tn += ((predict_labels == 0) & (output_labels == 0)).sum().item()  # 原标签为0，预测为 0 的总数
            fp += ((predict_labels != 0) & (output_labels == 0)).sum().item()  # 原标签为0，预测为 1 的总数
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

def calculate_magnitude(zq,zu,tensor_zeros):
    # return th.max(zq-zu,th.zeros(size=zq.size()).to(device)).norm(2,dim=1)**2
    return th.max(zq - zu, tensor_zeros).norm(2, dim=1) ** 2
def max_margin_loss(query_embedding,target_embeddings,alpha,tensor_zeros,tensor_zero):
    pos_loss = calculate_magnitude(query_embedding,target_embeddings[0],tensor_zeros)
    #neg_loss = th.sum( th.max(th.zeros(size=target_embeddings.size()).to(device), alpha-calculate_magnitude(query_embedding,target_embeddings[1:])))

    neg_loss = th.sum(th.max(tensor_zero,alpha - calculate_magnitude(query_embedding, target_embeddings[1:],tensor_zero)))

    return pos_loss + neg_loss

def predict(zq,zu,t,tensor_zeros):
    return 1 if calculate_magnitude(zq,zu,tensor_zeros)<t else 0

def train(options):

    th.multiprocessing.set_sharing_strategy('file_system')
    device = th.device("cuda:"+str(options.gpu) if th.cuda.is_available() else "cpu")
    # Dump the preprocessing result to save time!
    # for region detecion, the data_path is 'data/region', for boundary(io) detection, the data_path is 'data/boundary'
    data_path = 'data/boundary/'
    train_data_file = os.path.join(data_path,'boom2.pkl')
    val_data_file = os.path.join(data_path,'rocket2.pkl')
    #split_dir = 'splits/rokcet'

    if options.preprocess :
        preprocess(data_path,device,options)
        return
    print(options)

    if isinstance(options.in_nlayers,int):
        in_nlayers = options.in_nlayers
    else:
        in_nlayers = options.in_nlayers[0]
    if isinstance(options.out_nlayers,int):
        out_nlayers = options.out_nlayers
    else:
        out_nlayers = options.out_nlayers[0]

    print("Loading data...")

    with open(train_data_file,'rb') as f:
        train_g = pickle.load(f)

    with open(val_data_file,'rb') as f:
        val_g = pickle.load(f)

    if options.gat:
        add_self_loop = True
    else:
        add_self_loop = False
    block_sampler = Sampler((in_nlayers + 1) * [options.degree], include_dst_in_src=options.include,
                      add_self_loop=add_self_loop)

    if not os.path.exists('dataset.pkl'):
        dataset = sample(device, train_g, block_sampler=block_sampler, num_query=1000, drop_rate=0.2,
                         depth_limit=in_nlayers, neg_rate=10)
        with open('dataset.pkl','wb') as f:
            pickle.dump(dataset,f)

    with open('dataset.pkl','rb') as f:
        dataset = pickle.load(f)
    # for data in dataset:
    #     print('query:',data[0])
    #     print('target:',data[1])

    train_g = DAG2UDG(train_g).to(device)
    val_g = DAG2UDG(val_g)

    train_nodes,pos_count,neg_count = oversample(train_g,options)

    rates = cal_ratios(neg_count,pos_count)
    print("neg/pos rates",rates)

    print("Data successfully loaded")
    k = options.k
    beta = options.beta
    t= 1
    alpha = 1
    Loss = max_margin_loss
    # if options.nlabels!=1 : Loss = nn.CrossEntropyLoss()
    # else: Loss = nn.BCEWithLogitsLoss(pos_weight=th.FloatTensor([options.pos_weight]).to(device))
    # print(options.nlabels)
    # print(Loss)
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
    tensor_zeros = th.zeros(size=(1,options.out_dim)).to(device)
    tensor_zero = th.zeros(size=(1,1)).to(device)
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

        train_num,total_num,total_loss,train_loss,correct,fn,fp,tn,tp = 0,0,0.0,0.0,0,0,0,0,0
        pos_count , neg_count =0, 0
        for ni, (query_blocks,target_blocks) in enumerate(dataset):
            #continue
            start_time = time()
            query_blocks = [b.to(device) for b in query_blocks]
            target_blocks = [b.to(device) for b in target_blocks]
            # print("in_block:",in_blocks)
            #print("out_block:",blocks)
            #print(out_blocks)
            input_features_q = query_blocks[0].srcdata['ntype']
            input_features_t = target_blocks[0].srcdata["ntype"]
            total_num += target_blocks[-1].num_dst_nodes()
            train_num += 1
            #print(blocks[-1].dstdata["label")
            #output_labels = blocks[-1].dstdata[label_name].squeeze(1)
            #total_num += len(output_labels)
            query_embedding = model(query_blocks,input_features_q)
            target_embeddings = model(target_blocks,input_features_t)
            train_loss += Loss(query_embedding,target_embeddings,alpha=alpha,tensor_zeros=tensor_zeros,tensor_zero=tensor_zero)

            #print(label_hat)
            #print(label_hat.shape)
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
            # #print(nn.functional.sigmoid(label_hat),output_labels)
            # #print(label_hat,output_labels)
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
            # total_loss += train_loss.item() * len(output_labels)

            predict_labels = [predict(query_embedding,e,t,tensor_zeros) for e in target_embeddings]
            correct += predict_labels[0]
            neg_predicts = th.tensor(predict_labels[1:])
            correct += (neg_predicts==0).sum().item()
            # train_loss += loss
            # correct += (
            #         predict_labels == output_labels
            # ).sum().item()
            fn += 1 if predict_labels[0]==0 else 0  # 原标签为1，预测为 0 的总数
            tp += predict_labels[0]  # 原标签为1，预测为 1 的总数
            tn += (neg_predicts==0).sum().item()  # 原标签为0，预测为 0 的总数
            fp += (neg_predicts==1).sum().item()  # 原标签为0，预测为 1 的总数

            if (ni%options.batch_size == 0 and ni!=0) | ni==len(dataset):
                total_loss += train_loss
                train_loss = train_loss / train_num
                optim.zero_grad()
                train_loss.backward()
                train_loss,train_num = 0.0, 0
           # print(model.GCN1.layers[0].attn_n.grad)
            endtime = time()
            runtime += endtime-start_time

        Train_loss = total_loss / len(dataset)

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

        # val_loss, val_acc, val_recall,val_precision, val_F1_score = validate(valdataloader, label_name,device, model, Loss,options.alpha,beta)

        if epoch % 1 == 0 and get_options().rel:
            #if get_options().attn_type == 'node': print(model.GCN1.layers[0].fc_attn_n.weight)
            #print(model.GCN1.layers[0].attn_e.grad)
            #else: print(model.GCN1.layers[0].fc_attn_e.weight)
            print(model.layers[0].alpha)
        if options.weighted:
            print('alpha:',model.fc_combine.weight)
        # save the result of current epoch
        with open(os.path.join(options.model_saving_dir, 'res.txt'), 'a') as f:
            f.write(str(round(Train_loss, 3)) + " " + str(round(Train_acc, 3)) + " " + str(
                round(Train_recall, 3)) + " " + str(round(Train_precision,3))+" " + str(round(Train_F1_score, 3)) + "\n")
            # f.write(str(round(val_loss, 3)) + " " + str(round(val_acc, 3)) + " " + str(
            #     round(val_recall, 3)) + " "+ str(round(val_precision,3))+" " + str(round(val_F1_score, 3)) + "\n")
            f.write('\n')

        #judgement = val_F1_score > max_F1_score
        judgement = True
        if judgement:
           # max_F1_score = val_F1_score
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
