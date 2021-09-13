import sys
import os
import pickle

sys.path.append("..")
import util.structural as structural
import util.verilog as verilog

import dgl

if __name__ == "__main__":
    folder = "../GCN/predicts/io/plus2/nl55"
    total = 0
    total_matched = 0
    tried = 0
    # find input from outputs
    for case in os.listdir(folder):
        # if case != "ut7_sample3.pkl":
        #     continue
        case_name = os.path.join(folder, case)
        with open(case_name, "rb") as f:
            g, pred_i, pred_o = pickle.load(f)
        assert len(pred_i) == len(pred_o) == g.number_of_nodes()
        matched = set()
        for idx, is_o in enumerate(pred_o):
            in_s = []
            if is_o == 0:  # prediction: not output node
                continue
            for depth, nodes in enumerate(dgl.bfs_nodes_generator(g, idx, True)):
                for n in nodes:
                    n = n.item()
                    tried += 1
                    if pred_i[n] == 1:
                        matched.add(n)
                for n in nodes:
                    n = n.item()
                    if pred_i[n] == 1:
                        in_s.append(n)
                        matched.add(n)
                        if len(in_s) == 2:
                            break
                if len(in_s) == 2:
                    break
        print(
            case,
            len(matched) / len([1 for v in pred_i if v == 1]),
            len(matched),
            len([1 for v in pred_i if v == 1]),
        )
        total += len([1 for v in pred_i if v == 1])
        total_matched += len(matched)
    print(total_matched / total, total, total_matched, tried)

    # find input from outputs
    total = 0
    total_matched = 0
    tried = 0
    for case in os.listdir(folder):
        # if case != "ut7_sample3.pkl":
        #     continue
        case_name = os.path.join(folder, case)
        with open(case_name, "rb") as f:
            g, pred_i, pred_o = pickle.load(f)
        assert len(pred_i) == len(pred_o) == g.number_of_nodes()
        matched = set()
        for idx, is_i in enumerate(pred_i):
            if is_i == 0:  # prediction: not output node
                continue
            is_match = False
            for depth, nodes in enumerate(dgl.bfs_nodes_generator(g, idx, False)):
                if depth == 0:  # cannot count self as output...
                    continue
                for n in nodes:
                    n = n.item()
                    tried += 1
                    if pred_o[n] == 1:
                        matched.add(n)
                        is_match = True
                if is_match:
                    break
        print(
            case,
            len(matched) / len([1 for v in pred_o if v == 1]),
            len(matched),
            len([1 for v in pred_o if v == 1]),
        )
        total += len([1 for v in pred_o if v == 1])
        total_matched += len(matched)
    print(total_matched / total, total, total_matched, tried)

