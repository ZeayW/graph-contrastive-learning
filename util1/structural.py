from __future__ import annotations
from typing import List, Dict, Optional
import sys

sys.path.append("..")
from util.cut_enumeration import Cut, cut_enum
import cProfile
import random
import copy
import itertools

# 加法器单元： rca / cla / csa
class AdderUnit:
    def __init__(
        self,
        s: str,
        co: str,
        fanins: List[str],
        ci: Optional[str] = None,
        a: Optional[str] = None,
        b: Optional[str] = None,
        p: Optional[str] = None,        # 适用于cla csa
        g: Optional[str] = None,        # 适用于cla csa
    ):
        self.s = s
        self.co = co
        self.ci = ci
        self.fanins = fanins
        self.a = a
        self.b = b
        self.p = p
        self.g = g


def find_rca(G):
    cuts = cut_enum(G)
    # half adders
    xor2_cuts: Dict[str, Cut] = {}
    and2_cuts: Dict[str, Cut] = {}
    # full adders
    xor3_cuts: Dict[str, Cut] = {}
    maj3_cuts: Dict[str, Cut] = {}
    # here n is node
    for n, n_cuts in cuts.items():
        for cut in n_cuts:
            if len(cut) == 2:
                # tt: true table
                if cut.tt.data == 0b0110:  # xor2
                    xor2_cuts[n] = cut
                elif cut.tt.data == 0b1000:  # and2
                    and2_cuts[n] = cut
            elif len(cut) == 3:
                if cut.tt.data == 0b10010110:  # xor3
                    xor3_cuts[n] = cut
                elif cut.tt.data == 0b11101000:  # maj3
                    maj3_cuts[n] = cut
    # print(
    #     "xor2:{}, and2:{}, xor3:{}, maj3:{}".format(
    #         len(xor2_cuts), len(and2_cuts), len(xor3_cuts), len(maj3_cuts)
    #     )
    # )

    adder_units: Dict[str, AdderUnit] = {}

    # full adders
    # maj找co, xor找s
    for n, cut in maj3_cuts.items():
        for nn, ccut in xor3_cuts.items():
            if cut == ccut:
                adder_units[nn] = AdderUnit(s=nn, co=n, fanins=list(cut))
                break

    # TODO: consider half adders

    # multi-bit adders
    to_edges = {}
    from_edges = {}
    # 所有的加法器单元 两两判断是否相连
    for (s1, au1), (s2, au2) in itertools.combinations(adder_units.items(), 2):
        if au1.co in au2.fanins:
            to_edges[s1] = s2
            from_edges[s2] = s1

    num_adders = 0
    adders = []

    # link adder units
    for o, au in adder_units.items():
        # 若 o没有入边，则说明该单元为加法器的最低位
        if o not in from_edges:  # least significant bit
            au.ci = au.fanins[0]
            au.a, au.b = au.fanins[1:]
            adder: List[AdderUnit] = [au]
            curr = o
            ci = au.co
            # 沿着链接，不断link
            while curr in to_edges:
                curr = to_edges[curr]
                au = adder_units[curr]
                au.ci = ci
                au.a, au.b = [fi for fi in au.fanins if fi != au.ci]
                assert au.a < au.b  # should be sorted in cut!
                adder.append(au)
                ci = au.co
            adders.append(adder)

    linked = 0
    has_p = 0
    has_g = 0
    for adder in adders:
        for au in adder:
            linked += 1
            # update labels and more info
            # 寻找加法器各个单元的p
            for p, cut in xor2_cuts.items():
                if list(cut) == [au.a, au.b]:
                    au.p = p
                    has_p += 1
                    break
            # 寻找加法器各个单元的g
            for g, cut in and2_cuts.items():
                if list(cut) == [au.a, au.b]:
                    au.g = g
                    has_g += 1
                    break

    print("#fa:{}, #adder:{}".format(len(adder_units), len(adders)))
    # print("linked:{}, has_p:{}, has_g:{}".format(linked, has_p, has_g))
    return adders


# 将4bit的rca替换为cla
def add_cla(
    nodes: List,
    edges: List,
    adders: List[List[AdderUnit]],
    adder_idx: int,
    start_bit: int,
):
    """substitute adders[adder_idx][start_bit: start_bit+4] to cla"""
    assert adder_idx < len(adders)
    adder: List[AdderUnit] = adders[adder_idx]
    assert start_bit + 3 < len(adder)

    new_nodes = []
    new_edges = []
    cla_name = "adder" + str(adder_idx) + adder[start_bit].s
    # print("substitute bits {}-{} to cla {}".format(start_bit, start_bit + 3, cla_name))
    # 获取目标rca的 p, g, s, co ,c0 （注意p,g不一定存在）
    p_signals = [au.p for au in adder[start_bit : start_bit + 4]]
    g_signals = [au.g for au in adder[start_bit : start_bit + 4]]
    s_signals = [au.s for au in adder[start_bit : start_bit + 4]]
    co_signals = [au.co for au in adder[start_bit : start_bit + 4]]
    c0 = adder[start_bit].ci
    # ci_gens记录所有四个unit的中间信号 （第一个unit有1个p1*c0，第二个unit有两个p1*g0,p1*p0*c0；...）
    ci_gens: List[List[Optional[str]]] = [[None for _ in range(4)] for _ in range(4)]
    for i in range(4):
        # create pg if not exist
        # 若 p,g不存在，则创造p,g
        if p_signals[i] is None:
            p = cla_name + "p" + str(i)
            p_signals[i] = p
            new_nodes.append((p, {"type": "xor"}))
            new_edges.append((adder[start_bit + i].a, p, {"is_reverted": False}))
            new_edges.append((adder[start_bit + i].b, p, {"is_reverted": False}))
            adder[start_bit + i].p = p
        if g_signals[i] is None:
            g = cla_name + "g" + str(i)
            g_signals[i] = g
            new_nodes.append((g, {"type": "and"}))
            new_edges.append((adder[start_bit + i].a, g, {"is_reverted": False}))
            new_edges.append((adder[start_bit + i].b, g, {"is_reverted": False}))
            adder[start_bit + i].g = g

        # create internal signals for co
        # 创造co的中间信号 （p1*c0; p1*g0,p1*p0*c0; .... ），type都是and
        for j in range(i + 1):  # [0, i], each is a possible co source
            cij = cla_name
            fanins = []
            for k in range(i, j - 1, -1):
                cij += "p" + str(k)
                fanins.append(p_signals[k])
            cij += "g" + str(j - 1) if j > 0 else "c0"
            fanins.append(g_signals[j - 1] if j > 0 else c0)
            ci_gens[i][j] = cij
            new_nodes.append((cij, {"type": "and"}))
            for fi in fanins:
                new_edges.append((fi, cij, {"is_reverted": False}))
            new_edges.append((cij, co_signals[i], {"is_reverted": False}))
        new_edges.append((g_signals[i], co_signals[i], {"is_reverted": False}))

        # reimplmente co and sum
        #加入co,s
        # si = pi+ci
        new_nodes.append((co_signals[i], {"type": "or"}))
        new_nodes.append((s_signals[i], {"type": "xor"}))
        new_edges.append((p_signals[i], s_signals[i], {"is_reverted": False}))
        new_edges.append(
            (co_signals[i - 1] if i > 0 else c0, s_signals[i], {"is_reverted": False})
        )

    # add other existing nodes and edges
    #加入其他节点 （加法器外）
    # co_signals and s_signals are reimplemented (w/ the same name)
    # therefore the original fanins are skipped
    for n, prop in nodes:
        if n not in co_signals and n not in s_signals:
            new_nodes.append((n, prop))

    # 将原本的 s=ai+bi+ci 以及 ci=maj(ai,bi,ci-1)删掉了
    for src, dst, prop in edges:
        if dst not in co_signals and dst not in s_signals:
            new_edges.append((src, dst, prop))

    # adder的 a,b,s的名字都没变，因此无需更新adders
    return new_nodes, new_edges, adders


def add_csa(
    nodes: List,
    edges: List,
    adders: List[List[AdderUnit]],
    adder_idx: int,
    start_bit: int,
):
    """substitute adders[adder_idx][start_bit: start_bit+4] to csa"""
    assert adder_idx < len(adders)
    adder: List[AdderUnit] = adders[adder_idx]
    assert start_bit + 3 < len(adder)

    new_nodes = []
    new_edges = []
    csa_name = "adder" + str(adder_idx) + adder[start_bit].s
    # print("substitute bits {}-{} to csa {}".format(start_bit, start_bit + 3, csa_name))

    p_signals = [au.p for au in adder[start_bit : start_bit + 4]]
    c0 = adder[start_bit].ci
    assert c0 is not None
    cn = adder[start_bit + 3].co
    # add carry skip
    cs = csa_name + "s"
    csc0 = csa_name + "csc0"
    ncscn = csa_name + "ncscn"
    c = csa_name + "c"
    new_nodes.append((cs, {"type": "and"}))
    new_nodes.append((csc0, {"type": "and"}))
    new_nodes.append((ncscn, {"type": "and"}))
    new_nodes.append((c, {"type": "or2"}))
    new_edges.append((cs, csc0, {"is_reverted": False}))
    new_edges.append((c0, csc0, {"is_reverted": False}))
    new_edges.append((cs, ncscn, {"is_reverted": True}))
    new_edges.append((cn, ncscn, {"is_reverted": False}))
    new_edges.append((csc0, c, {"is_reverted": False}))
    new_edges.append((ncscn, c, {"is_reverted": False}))
    for i in range(4):
        # create p if not exist
        if p_signals[i] is None:
            p = csa_name + "p" + str(i)
            p_signals[i] = p
            new_nodes.append((p, {"type": "xor"}))
            new_edges.append((adder[start_bit + i].a, p, {"is_reverted": False}))
            new_edges.append((adder[start_bit + i].b, p, {"is_reverted": False}))
            adder[start_bit + i].p = p
        new_edges.append((p_signals[i], cs, {"is_reverted": False}))

    # deal with the rest nodes and edges
    # fanouts of cn are eliminated, expect for ncscn
    new_nodes.extend(nodes)

    for src, dst, prop in edges:
        if src == cn:
            new_edges.append((c, dst, prop))
        else:
            new_edges.append((src, dst, prop))

    return new_nodes, new_edges, adders


def add_cla_csa(
    nodes: List, edges: List, adders: List[List[AdderUnit]],
):
    # print("#adders = {}".format(len(adders)))
    for aid, adder in enumerate(adders):
        start_bit = 0  # to consider half adder: if adder[0][2] is not None else 1
        end_bit = len(adder)  # exclusive
        # print("adder of length {}".format(end_bit))
        while end_bit - start_bit >= 4:
            start_bit = random.randint(start_bit, end_bit)
            if end_bit - start_bit < 4:
                break  # stop sustitution

            rand_type = random.randint(0, 1)
            if rand_type == 0:
                # sustitue [start_bit: start_bit+4) by csa
                nodes, edges, adders = add_csa(nodes, edges, adders, aid, start_bit)
            else:
                # sustitue [start_bit: start_bit+4) by cla
                nodes, edges, adders = add_cla(nodes, edges, adders, aid, start_bit)

            start_bit += 4
    in_nodes = []
    out_nodes = []
    for adder in adders:
        for au in adder:
            in_nodes.extend([au.a, au.b])
            out_nodes.append(au.s)
    return nodes, edges, in_nodes, out_nodes


def main():
    import verilog
    import networkx as nx

    import os

    random.seed(726)

    folder = "../dataset/test/ICCAD2014/v/"
    total_nodes = 0
    total_edges = 0
    for v in os.listdir(folder):
        if True or v.startswith("ut1_") or v.startswith("ut2_") or v.startswith("ut3_"):
            # if v == "ut13_sample2.v":
            vf = os.path.join(folder, v)
            print("===== {} =====".format(vf))
            nodes, edges = verilog.iccad_parser(vf)
            nnames = [name for name, _ in nodes]
            # for src, dst, _ in edges:
            #     assert src in nnames
            #     assert dst in nnames

            print("#nodes: {}, #edges: {}".format(len(nodes), len(edges)))
            total_edges += len(edges)
            total_nodes += len(nodes)
            # print(nodes)
            # print(edges)
            G = nx.DiGraph()
            G.add_nodes_from(nodes)
            G.add_edges_from(edges)
            adders = find_rca(G)
            nodes, edges, in_nodes, out_nodes = add_cla_csa(nodes, edges, adders)
            for n in nodes:
                n[1]["is_input"] = 1 if n[0] in in_nodes else 0
                n[1]["is_output"] = 1 if n[0] in out_nodes else 0

    print("#nodes: {}, #edges: {}".format(total_nodes, total_edges))


if __name__ == "__main__":
    # cProfile.run("main()", sort="tottime")
    main()
