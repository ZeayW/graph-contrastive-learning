from dataset_dc import parse_single_file
from MyDataLoader import MyNodeDataLoader as DataLoader_dag
from MyDataLoader import Sampler as Sampler_dag
from MyDataLoader_ud import MyNodeDataLoader as DataLoader_udg
from MyDataLoader_ud import Sampler as Sampler_udg
from options import get_options
from model import *
import dgl
import pickle
import numpy as np
import os
from time import time
from util.dc_verilog_parser import DcParser

def DAG2UDG(g,options):
    edges = g.edges()
    reverse_edges = (edges[1],edges[0])
    new_edges = (th.cat((edges[0],reverse_edges[0])),th.cat((edges[1],reverse_edges[1])))
    udg =  dgl.graph(new_edges,num_nodes=g.num_nodes())
    # if options.gat:
    #     udg.add_edges(udg.nodes(),udg.nodes())
    for key, value in g.ndata.items():
        # print(key,value)
        udg.ndata[key] = value
    # for key, value in g.edata.items():
    #     # print(key,value)
    #     udg.edata[key] = th.cat((value,value))

    return udg

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

def predict_single_dag(device,model,g,Loss,label,options):
    start = time()
    #print("beta:",beta)
    if label == 'input':
        label_name = 'label_i'
    else:
        label_name = 'label_o'
    if isinstance(options.in_nlayers, int):
        in_nlayers = options.in_nlayers
    else:
        in_nlayers = options.in_nlayers[0]
    if isinstance(options.out_nlayers, int):
        out_nlayers = options.out_nlayers
    else:
        out_nlayers = options.out_nlayers[0]
    # device = th.device("cuda" if th.cuda.is_available() else "cpu")
    # #print("Loaded graph, size {}".format(g.num_nodes()))
    #
    # with open(os.path.join(options.test_model_path,str(k)+'/model.pkl'), 'rb') as f:
    #     fold,param,model = pickle.load(f)
    # print(g.num_nodes())
    in_sampler = Sampler_dag([None] * (in_nlayers + 1), include_dst_in_src=options.include)
    out_sampler = Sampler_dag([None] * (out_nlayers + 1), include_dst_in_src=options.include)
    dataloader = DataLoader_dag(
        True,
        g,
        get_reverse_graph(g),
        list(range(g.num_nodes())),
        in_sampler,
        out_sampler,
        batch_size=g.num_nodes(),
        shuffle=False,
        drop_last=False,
    )

    alpha = options.alpha
    #beta= options.beta
    predicts = []
    total_num, total_loss, correct, fn, fp, tn, tp = 0, 0.0, 0, 0, 0, 0, 0

    error_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fp_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fn_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    num_errors = 0
    runtime = 0
    num_batch = 0
    with th.no_grad():
        for vni, (central_nodes, in_input_nodes, in_blocks, out_input_nodes, out_blocks) in enumerate(
                dataloader
        ):
            num_batch += 1
            start = time()
            in_blocks = [b.to(device) for b in in_blocks]

            out_blocks = [b.to(device) for b in out_blocks]
            in_input_features = in_blocks[0].srcdata["ntype"]
            out_input_features = out_blocks[0].srcdata["ntype"]
            # print(out_blocks[0],len(out_input_features))
            # print(blocks[-1].dstdata["label")
            output_labels = in_blocks[-1].dstdata[label_name].squeeze(1)
            total_num += len(output_labels)
            label_hat = model(in_blocks, in_input_features, out_blocks, out_input_features)
            if get_options().nlabels != 1:
                pos_prob = nn.functional.softmax(label_hat, 1)[:, 1]
            else:
                pos_prob = th.sigmoid(label_hat)
            # print(pos_prob)
            pos_prob[pos_prob >= options.beta] = 1
            pos_prob[pos_prob < options.beta] = 0
            # pos_prob = label_hat
            predict_labels = pos_prob
            end = time()
            runtime += end - start
            predicts.extend(predict_labels.cpu().numpy().tolist())
            if alpha != 1:
                pos_index = (output_labels != 0)
                neg_index = (output_labels == 0)
                pos_loss = Loss(label_hat[pos_index], output_labels[pos_index]) * pos_index.sum().item()
                neg_loss = Loss(label_hat[neg_index], output_labels[neg_index]) * neg_index.sum().item()
                val_loss = (alpha * pos_loss + neg_loss) / len(output_labels)
            else:
                val_loss = Loss(label_hat, output_labels)

            total_loss += val_loss.item() * len(output_labels)

            error_mask = predict_labels != output_labels
            errors = out_blocks[-1].dstdata['ntype'][error_mask]
            if len(errors) != 0:
                errors = th.argmax(errors, dim=1)
                num_errors += len(errors)
            fp_mask = (predict_labels != 0) & (output_labels == 0)
            fn_mask = (predict_labels == 0) & (output_labels != 0)
            fps = out_blocks[-1].dstdata['ntype'][fp_mask]
            if len(fps) != 0: fps = th.argmax(fps, dim=1)
            fns = out_blocks[-1].dstdata['ntype'][fn_mask]
            if len(fns) != 0: fns = th.argmax(fns, dim=1)
            # print('predict:',predict_labels)
            # print("label:",output_labels)
            correct += (
                    predict_labels == output_labels
            ).sum().item()

            fn += ((predict_labels == 0) & (output_labels != 0)).sum().item()  # 原标签为1，预测为 0 的总数
            tp += ((predict_labels != 0) & (output_labels != 0)).sum().item()  # 原标签为1，预测为 1 的总数
            tn += ((predict_labels == 0) & (output_labels == 0)).sum().item()  # 原标签为0，预测为 0 的总数
            fp += ((predict_labels != 0) & (output_labels == 0)).sum().item()  # 原标签为0，预测为 1 的总数
    #print("validate time:", runtime)
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
    # print("  validate:")
    # print("\ttp:", tp, " fp:", fp, " fn:", fn, " tn:", tn, " precision:", round(precision, 3))
    # print("\tloss:{:.3f}, acc:{:.3f}, recall:{:.3f}, F1 score:{:.3f}".format(loss, acc, recall, F1_score))


    return predicts,acc,recall,precision,F1_score

def predict_single_udg(device,model,g,Loss,label,options):

    g = DAG2UDG(g, options)
    start = time()
    #print("beta:",beta)
    if label == 'input':
        label_name = 'label_i'
    else:
        label_name = 'label_o'
    if isinstance(options.in_nlayers, int):
        in_nlayers = options.in_nlayers
    else:
        in_nlayers = options.in_nlayers[0]
    if isinstance(options.out_nlayers, int):
        out_nlayers = options.out_nlayers
    else:
        out_nlayers = options.out_nlayers[0]

    if options.gat:
        add_self_loop = True
    else:
        add_self_loop = False

    sampler = Sampler_udg((in_nlayers + 1) * [None], include_dst_in_src=options.include,
                      add_self_loop=add_self_loop)
    dataloader = DataLoader_udg(
        True,
        g,
        list(range(g.num_nodes())),
        sampler,
        batch_size=g.num_nodes(),
        shuffle=False,
        drop_last=False,
    )


    alpha = options.alpha
    #beta= options.beta
    predicts = []
    total_num, total_loss, correct, fn, fp, tn, tp = 0, 0.0, 0, 0, 0, 0, 0

    error_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fp_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    fn_count = th.zeros(size=(1, get_options().in_dim)).squeeze(0).numpy().tolist()
    num_errors = 0
    runtime = 0
    num_batch = 0
    with th.no_grad():
        for vni, (central_nodes, input_nodes, blocks) in enumerate(
                dataloader
        ):
            num_batch += 1
            start = time()
            blocks = [b.to(device) for b in blocks]
            input_features = blocks[0].srcdata["ntype"]

            # print(out_blocks[0],len(out_input_features))
            # print(blocks[-1].dstdata["label")
            output_labels = blocks[-1].dstdata[label_name].squeeze(1)
            total_num += len(output_labels)
            label_hat = model(blocks, input_features)
            if get_options().nlabels != 1:
                pos_prob = nn.functional.softmax(label_hat, 1)[:, 1]
            else:
                pos_prob = th.sigmoid(label_hat)
            # print(pos_prob)
            pos_prob[pos_prob >= options.beta] = 1
            pos_prob[pos_prob < options.beta] = 0
            # pos_prob = label_hat
            predict_labels = pos_prob
            end = time()
            runtime += end - start
            predicts.extend(predict_labels.cpu().numpy().tolist())
            if alpha != 1:
                pos_index = (output_labels != 0)
                neg_index = (output_labels == 0)
                pos_loss = Loss(label_hat[pos_index], output_labels[pos_index]) * pos_index.sum().item()
                neg_loss = Loss(label_hat[neg_index], output_labels[neg_index]) * neg_index.sum().item()
                val_loss = (alpha * pos_loss + neg_loss) / len(output_labels)
            else:
                val_loss = Loss(label_hat, output_labels)

            total_loss += val_loss.item() * len(output_labels)

            error_mask = predict_labels != output_labels
            errors = blocks[-1].dstdata['ntype'][error_mask]
            if len(errors) != 0:
                errors = th.argmax(errors, dim=1)
                num_errors += len(errors)
            fp_mask = (predict_labels != 0) & (output_labels == 0)
            fn_mask = (predict_labels == 0) & (output_labels != 0)
            fps = blocks[-1].dstdata['ntype'][fp_mask]
            if len(fps) != 0: fps = th.argmax(fps, dim=1)
            fns = blocks[-1].dstdata['ntype'][fn_mask]
            if len(fns) != 0: fns = th.argmax(fns, dim=1)
            # print('predict:',predict_labels)
            # print("label:",output_labels)
            correct += (
                    predict_labels == output_labels
            ).sum().item()

            fn += ((predict_labels == 0) & (output_labels != 0)).sum().item()  # 原标签为1，预测为 0 的总数
            tp += ((predict_labels != 0) & (output_labels != 0)).sum().item()  # 原标签为1，预测为 1 的总数
            tn += ((predict_labels == 0) & (output_labels == 0)).sum().item()  # 原标签为0，预测为 0 的总数
            fp += ((predict_labels != 0) & (output_labels == 0)).sum().item()  # 原标签为0，预测为 1 的总数
    #print("validate time:", runtime)
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
    # print("  validate:")
    # print("\ttp:", tp, " fp:", fp, " fn:", fn, " tn:", tn, " precision:", round(precision, 3))
    # print("\tloss:{:.3f}, acc:{:.3f}, recall:{:.3f}, F1 score:{:.3f}".format(loss, acc, recall, F1_score))


    return predicts,acc,recall,precision,F1_score
def predict(options):
    #start = time.time()
    visited = {}
    save_path = get_options().result_dir
    if os.path.exists(save_path) is False:
        os.makedirs(save_path)
    Loss = nn.CrossEntropyLoss()
    device = th.device("cuda:0" if th.cuda.is_available() else "cpu")
    parser = DcParser('Rocket', ["alu_DP_OP", "add_x"], 'xor')

    model_path = 'final_models/'
    data_path = "testdata"

    with open(os.path.join('data/fadd/', 'rocket2.pkl'),'rb') as f:
        total_g = pickle.load(f)
    for model in os.listdir(model_path):
        if os.path.isdir(model_path+model):
            testcases = set([])
            predict_single = predict_single_dag if model == 'asyn' else predict_single_udg
            # if model != 'asyn':
            #     continue
            for file in os.listdir(data_path):
                with open(os.path.join(data_path,file),'rb') as f:
                    g = pickle.load(f)
                casename = file.split('.')[0]
                testcases.add(casename)
                input_scores = []
                output_scores = []
                for i in range(1,6):
                    with open(os.path.join(model_path, model + '/i/model{}.pkl'.format(i)), 'rb') as f:
                        param_in, model_in = pickle.load(f)

                    with open(os.path.join(model_path, model + '/o/model{}.pkl'.format(i)), 'rb') as f:
                        param_out, model_out = pickle.load(f)
                    predict_i, acc_i, recall_i, precision_i, F1_score_i = predict_single(device, model_in, g, Loss,
                                                                                         'input', param_in)
                    input_scores.append([acc_i, recall_i, precision_i, F1_score_i])
                    predict_o, acc_o, recall_o, precision_o, F1_score_o = predict_single(device, model_out, g, Loss,
                                                                                         'output', param_out)
                    output_scores.append([acc_o, recall_o, precision_o, F1_score_o])

                    save_path = os.path.join(model_path,model+'/predict/{}/'.format(casename))
                    if os.path.exists(save_path) is False:
                        os.mkdir(save_path)
                    with open(os.path.join(save_path , '{}.pkl'.format(i)), 'wb') as f:
                        pickle.dump((predict_i, predict_o), f)

                print(casename, '\t  input\t\t\t\t\t  output')
                print('{}\tAcc\tRecall\tPrec\tF1_score\t\tAcc\tRecall\tPrec\tF1_score'.format(model))
                for i in range(5):
                    print(i+1, end='\t')
                    for score in input_scores[i]:
                        print(round(score, 3), end='\t')
                    print("\t\t",end='')
                    for score in output_scores[i]:
                        print(round(score, 3), end='\t')
                    print('')


    #print("total time cost: ",round(end-start,3),'s')
if __name__ == "__main__":
    seed = 1234
    # th.set_deterministic(True)
    th.manual_seed(seed)
    th.cuda.manual_seed(seed)
    np.random.seed(seed)
    predict(get_options())
    #predict_single("./dataset/test/data/adder.data",get_options())