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

    def compute_tt(self, cuts: List[Cut], is_negated: List[bool]):
        assert len(cuts) == len(is_negated)
        self.tt = TruthTable(len(self))
        mask = (1 << (1 << len(self))) - 1
        if not cuts:
            assert len(self) == 1
            self.tt.data = 0b10
            return
        elif len(cuts) == 1:
            if self.func == "not":
                self.tt.data = ~cuts[0].tt.data & mask
            else:
                assert self.func == "buf"
                self.tt.data = cuts[0].tt.data
            return
        tts = []
        for cut in cuts:  # fanin cuts
            tts.append(TruthTable(cut.tt.num_var, cut.tt.data).extend_to(len(self)))
            supp = [self.index(c) for c in cut]
            tts[-1].expand(supp)

        tt_w_neg = list(zip(tts, is_negated))
        # init using the first truth_table. Do NOT init with 0!
        # print(tts[0], is_negated[0])
        data = (~tt_w_neg[0][0].data & mask) if tt_w_neg[0][1] else tt_w_neg[0][0].data
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


def trivial_cut(func: str, n: int) -> Cut:
    c = Cut(func)
    c.append(n)
    c.compute_tt([], [])
    return c


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
def cut_enum_not_edge(G, max_k=3) -> Dict[str, CutSet]:
    """ computes cut enumeration in G """
    topo_order = list(nx.topological_sort(G))
    cuts = {}
    for n in topo_order:
        # print("===== {} =====".format(n))
        ntype = G.nodes[n]["type"]
        cuts[n] = CutSet()
        if ntype in ("1'b0", "1'b1"):
            cuts[n].append(constant_cut(0 if ntype == "1'b0" else 1))
            continue
        t_cut = trivial_cut(ntype, n)
        cuts[n].append(t_cut)
        if G.in_degree(n) == 0:  # PI
            continue
        else:
            fanin = list(G.predecessors(n))
            fanin_cuts = [cuts[i] for i in fanin]
            # cuts_product is a list of list of list, dim = [n * #fanin * cut_size]
            cuts_product = itertools.product(*fanin_cuts)
            is_negated = [G[i][n]["is_reverted"] for i in fanin]
            for raw_cut in cuts_product:
                cut = Cut(ntype)
                for c in raw_cut:
                    cut.extend([i for i in c if i not in cut])
                if len(cut) > max_k or cuts[n].dominates(cut):
                    continue
                cut = Cut(ntype, sorted(cut))
                cut.compute_tt(list(raw_cut), is_negated)
                ncs = CutSet()
                for c in cuts[n]:
                    if not cut.dominates(c):
                        ncs.append(c)
                ncs.append(cut)
                cuts[n] = ncs
    return cuts


# returns a dictionary of {node: cuts}
def cut_enum(G, max_k=3) -> Dict[str, CutSet]:
    """ computes cut enumeration in G """
    topo_order = list(nx.topological_sort(G))
    cuts = {}
    for n in topo_order:
        # print("===== {} =====".format(n))
        ntype = G.nodes[n]["type"]
        cuts[n] = CutSet()
        if ntype in ("1'b0", "1'b1"):
            cuts[n].append(constant_cut(0 if ntype == "1'b0" else 1))
            continue
        t_cut = trivial_cut(ntype, n)
        cuts[n].append(t_cut)
        if G.in_degree(n) == 0:  # PI
            continue
        else:
            fanin = list(G.predecessors(n))
            fanin_cuts = [cuts[i] for i in fanin]
            # cuts_product is a list of list of list, dim = [n * #fanin * cut_size]
            cuts_product = itertools.product(*fanin_cuts)
            for raw_cut in cuts_product:
                cut = Cut(ntype)
                for c in raw_cut:
                    cut.extend([i for i in c if i not in cut])
                if len(cut) > max_k or cuts[n].dominates(cut):
                    continue
                cut = Cut(ntype, sorted(cut))
                cut.compute_tt(list(raw_cut), [False] * len(raw_cut))
                ncs = CutSet()
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
