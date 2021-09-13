from __future__ import annotations
import networkx as nx
import itertools
from typing import List, Dict
import sys

sys.path.append("..")
from util.truth_table import TruthTable


class Cut(list):
    def __init__(self, func: str, iterable=None):
        self.func = func
        if iterable is not None:
            super().__init__(iterable)

    def __str__(self):
        if hasattr(self, "tt"):
            return super().__str__() + "(" + self.tt.__str__() + ")"
        else:
            return super().__str__() + "(no tt)"

    def dominates(self, cut: Cut):
        return all(x in cut for x in self)

    # 计算真值表， cuts为Cut的前驱节点的raw_cut列表， is_negated记录前驱节点是否取反
    # 注意， 割的输入是 前驱节点raw_cut的并集 的子集
    # len(cuts)表示前驱节点个数 ； len(self)表示割的输入个数； 二者不同，注意区分
    def compute_tt(self, cuts: List[Cut], is_negated: List[bool]):
        assert len(cuts) == len(is_negated)
        self.tt = TruthTable(len(self))
        # 对PI （平凡割），进行特殊处理，真值表为 10
        if not cuts:
            assert len(self) == 1
            self.tt = TruthTable(1, 0b10)
            return
        # tts记录 输入cuts的truthtable (扩展到当前Cut为宽度）
        tts = []
        for cut in cuts:  # fanin cuts
            tts.append(TruthTable(cut.tt.num_var, cut.tt.data).extend_to(len(self)))
            supp = [self.index(c) for c in cut]
            tts[-1].expand(supp)

        tt_w_neg = list(zip(tts, is_negated))
        mask = (1 << (1 << len(self))) - 1
        # init using the first truth_table. Do NOT init with 0!
        # print(tts[0], is_negated[0])
        # data初始化为cut的第一个输入的truetable
        data = (~tt_w_neg[0][0].data & mask) if tt_w_neg[0][1] else tt_w_neg[0][0].data
        # 迭代计算，在计算当前cut的tt时，该cut的输入的tt都已经计算好 （第一个输入用于初始化data，后面依次计算即可）
        for tt, neg in tt_w_neg[1:]:
            # print(tt, neg)
            td = (~tt.data & mask) if neg else tt.data
            if self.func in ("and", "nand"):
                data &= td
            elif self.func in ("or", "nor"):
                data |= td
            elif self.func in ("xor", "xnor"):
                data ^= td
        if self.func in ("nand", "nor", "xnor"):
            data = ~data & mask
        self.tt.data = data

# 平凡cut，输入只有根节点自身
def trivial_cut(func: str, n: int) -> Cut:
    c = Cut(func)
    c.append(n)
    c.compute_tt([], [])
    return c

# 常值cut
def constant_cut(n: int) -> Cut:
    c = Cut("1'b0" if n == 0 else "1'b1")
    c.tt = TruthTable(0, n)
    return c


class CutSet(list):
    def __init__(self, *args):
        super().__init__(args)

    def __str__(self):
        string = "["
        for cut in self:
            string += cut.__str__()
        string += "]"
        return string

    def dominates(self, cut: list) -> bool:
        for ex_cut in self:
            if ex_cut.dominates(cut):
                return True
        return False


# returns a dictionary of {node: cuts}
def cut_enum(G, max_k=3) -> Dict[str, CutSet]:
    """ computes cut enumeration in G """
    topo_order = list(nx.topological_sort(G))
    cuts = {}
    for n in topo_order:
        # print("===== {} =====".format(n))
        ntype = G.nodes[n]["type"]
        # 初始化节点n的cuts集合
        cuts[n] = CutSet()
        # 常值node, 只有常值割
        if ntype in ("1'b0", "1'b1"):
            cuts[n].append(constant_cut(0 if ntype == "1'b0" else 1))
            continue
        # 加入平凡割
        t_cut = trivial_cut(ntype, n)
        cuts[n].append(t_cut)
        #跳过PI （PI只有平凡割）
        if G.in_degree(n) == 0:  # PI
            continue
        else:
            # 递归构造cuts，fanin是节点n的直接前驱节点集合
            fanin = list(G.predecessors(n))
            # 获取当前节点的所有直接前驱节点的cuts
            fanin_cuts = [cuts[i] for i in fanin]
            # cuts_product is a list of list of list, dim = [n * #fanin * cut_size]
            # product：生成笛卡尔积
            cuts_product = itertools.product(*fanin_cuts)
            # G[i][n] ： 边(i,n), is_negated记录节点n的前驱边上是否有not
            is_negated = [G[i][n]["is_reverted"] for i in fanin]
            # 生成cut （消除重叠gate，且只保留长度符合要求（小于max_K）的cut,不加入被其他cut包含的cut ）
            for raw_cut in cuts_product:
                cut = Cut(ntype)
                # 消除重叠gate
                for c in raw_cut:
                    cut.extend([i for i in c if i not in cut])
                #只保留长度符合要求（小于max_K）的cut，且不加入被其他cut包含的cut
                if len(cut) > max_k or cuts[n].dominates(cut):
                    continue
                cut = Cut(ntype, sorted(cut))
                # 计算cut的truetable: 使用根节点直接前驱节点的cut
                cut.compute_tt(list(raw_cut), is_negated)
                ncs = CutSet()
                # 消除cuts中被当前cut dominate的cut
                for c in cuts[n]:
                    if not cut.dominates(c):
                        ncs.append(c)
                ncs.append(cut)
                cuts[n] = ncs
    return cuts


if __name__ == "__main__":
    # nodes, edges = vp.iccad_parser("../dataset/test/ICCAD2014/v/ut1_sample1.v")
    # G = nx.DiGraph()
    # nodes = [
    #     ("p1", {"type": "PI"}),
    #     ("p2", {"type": "PI"}),
    #     ("p3", {"type": "PI"}),
    #     ("o1", {"type": "or"}),
    #     ("o2", {"type": "or"}),
    #     ("a1", {"type": "and"}),
    # ]
    # edges = [
    #     ("p1", "o1", {"is_reverted": False}),
    #     ("p2", "o1", {"is_reverted": False}),
    #     ("p2", "o2", {"is_reverted": True}),
    #     ("p3", "o2", {"is_reverted": False}),
    #     ("o1", "a1", {"is_reverted": True}),
    #     ("o2", "a1", {"is_reverted": False}),
    # ]
    # G.add_nodes_from(nodes)
    # G.add_edges_from(edges)
    # cuts = cut_enum(G)
    # for k, v in cuts.items():
    #     print("{}: {}".format(k, v))

    G = nx.DiGraph()
    nodes = [
        ("1'b0", {"type": "1'b0"}),
        ("1'b1", {"type": "1'b1"}),
        ("p1", {"type": "PI"}),
        ("o1", {"type": "or"}),  # p1 OR 1 = 1
        ("o2", {"type": "or"}),  # 0 OR 1 = 1
        ("a1", {"type": "and"}),  # 0 AND p1 = 0
        ("a2", {"type": "and"}),  # 1 AND p1 = p1
    ]
    edges = [
        ("p1", "o1", {"is_reverted": False}),
        ("1'b1", "o1", {"is_reverted": False}),
        ("1'b0", "o2", {"is_reverted": False}),
        ("1'b1", "o2", {"is_reverted": False}),
        ("1'b0", "a1", {"is_reverted": False}),
        ("p1", "a1", {"is_reverted": False}),
        ("1'b1", "a2", {"is_reverted": False}),
        ("p1", "a2", {"is_reverted": False}),
    ]
    G.add_nodes_from(nodes)
    G.add_edges_from(edges)
    cuts = cut_enum(G)
    for k, v in cuts.items():
        print("{}: {}".format(k, v))
