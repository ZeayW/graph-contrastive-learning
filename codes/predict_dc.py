from dataset_quick import Dataset_q
from dataset_dc import Dataset_dc
from options import get_options
from model import *
from unity import CV_plot
import dgl
import pickle
import numpy as np
import os
from MyDataLoader import *
from time import time
from random import shuffle
from  sklearn.metrics import precision_recall_curve, average_precision_score
from matplotlib import pyplot as plt
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
def type_count(ntypes,count):
    for tp in ntypes:
        tp = tp.item()
        count[tp] +=1
def load_model(device,options):
    if options.pre_train is True:
        model_dir = options.pre_model_dir
    else:
        model_dir = options.model_saving_dir
    if os.path.exists(os.path.join(model_dir)) is False:
        return None,None

    with open(os.path.join(model_dir), 'rb') as f:
        param, classifier = pickle.load(f)
        param.beta = options.beta
    with open(os.path.join(model_dir), 'wb') as f:
        pickle.dump((param, classifier), f)
    classifier = classifier.to(device)
    return param, classifier


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
        for vni, (in_blocks,out_blocks) in enumerate(
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
def unlabel_low(g,unlabel_threshold):
    mask_low = g.ndata['position'] <= unlabel_threshold
    g.ndata['label_o'][mask_low] = 0

def main(options):
    th.multiprocessing.set_sharing_strategy('file_system')
    device = th.device("cuda:" + str(options.gpu) if th.cuda.is_available() else "cpu")
    label = options.label
    options, model = load_model(device, options)
    if model is None:
        print("No model, please prepocess first , or choose a pretrain model")
        return
    #print(model)
    is_FuncGCN1, is_FuncGCN2 = False,False
    print(model)
    if model.GCN1 is not None and type(model.GCN1) == FuncGCN:
        is_FuncGCN1 = True

    if model.GCN2 is not None and type(model.GCN2) == FuncGCN:
        is_FuncGCN2 = True
    beta = options.beta
    # Dump the preprocessing result to save time!
    data_path = options.datapath
    # if options.region:
    #     data_path= 'data/region/'
    val_data_file = os.path.join(data_path, 'rocket2.pkl')
    # split_dir = 'splits/rokcet'

    if label == 'in':
        label_name = 'label_i'
    else:
        label_name = 'label_o'
    #print(options)
    if isinstance(options.in_nlayers, int):
        in_nlayers = options.in_nlayers
    else:
        in_nlayers = options.in_nlayers[0]
    if isinstance(options.out_nlayers, int):
        out_nlayers = options.out_nlayers
    else:
        out_nlayers = options.out_nlayers[0]

    print("Loading data...")

    with open(val_data_file, 'rb') as f:
        val_g = pickle.load(f)
        # val_g.ndata['label_i'] = th.FloatTensor(val_g.ndata['label_i'].float())
        # val_g.ndata['label_i'] = th.FloatTensor(val_g.ndata['label_o'].float())
    val_g.ndata['position'][val_g.ndata['label_o'].squeeze(-1) == -1] = 100
    if in_nlayers == -1:
        in_nlayers = 0
    if out_nlayers == -1:
        out_nlayers = 0
    unlabel_low(val_g, options.unlabel)
    if options.add == -1:
        label_name = 'label_o'
        val_g.ndata['label_o'][val_g.ndata['label_o'].squeeze(-1) == 2] = 1
    val_g.ndata['f_input'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim), dtype=th.float)
    val_g.ndata['temp'] = th.ones(size=(val_g.number_of_nodes(), options.hidden_dim), dtype=th.float)

    val_g.ndata['ntype2'] = th.argmax(val_g.ndata['ntype'], dim=1).squeeze(-1)
    val_nids = th.tensor(range(val_g.number_of_nodes()))
    print(len(val_nids))
    val_nids = val_nids[val_g.ndata['label_o'].squeeze(-1) != -1]
    # or_mask = th.argmax(g.ndata['ntype'],dim=1) == 5
    # num_or = len(g.ndata['ntype'][or_mask])
    # print("ratio of or gate: ",num_or/g.num_nodes())
    if in_nlayers == -1:
        in_nlayers = 0
    if out_nlayers == -1:
        out_nlayers = 0
    in_sampler = Sampler([None] * (in_nlayers + 1), include_dst_in_src=options.include)
    out_sampler = Sampler([None] * (out_nlayers + 1), include_dst_in_src=options.include)

    valdataloader = MyNodeDataLoader(
        True,
        val_g,
        get_reverse_graph(val_g),
        val_nids,
        in_sampler,
        out_sampler,
        batch_size=val_g.num_nodes(),
        shuffle=True,
        drop_last=False,
    )
    # for (central_nodes,input_nodes,blocks,reverse_input_nodes,reverse_blocks) in dataloader:
    #     dataset.append((central_nodes,input_nodes,blocks,reverse_input_nodes,reverse_blocks))
    # total_size = len(dataset)
    # valid_end = int(total_size/options.k)
    # val_data = dataset[:valid_end]
    # train_data = dataset[valid_end:]

    print("Data successfully loaded")
    if options.nlabels != 1:
        Loss = nn.CrossEntropyLoss()
    else:
        Loss = nn.BCEWithLogitsLoss(pos_weight=th.FloatTensor([options.pos_weight]).to(device))

    val_loss, val_acc, val_recall,val_precision, val_F1_score = validate(valdataloader, label_name,device, model, Loss,options.alpha,beta,is_FuncGCN1,is_FuncGCN2)
    # predict_single("./dataset/test/data/adder.data",get_options())
if __name__ == "__main__":
    main(get_options())