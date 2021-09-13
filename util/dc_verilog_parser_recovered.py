import os
import collections

from typing import List, Dict, Tuple, Optional
import pyverilog
from pyverilog.vparser.parser import parse
import re

import networkx as nx

import cProfile


class DcParser:
    def __init__(self, top_module: str, adder_keywords: List[str]):
        self.top_module = top_module
        self.adder_keywords = adder_keywords

    def is_input_port(self, port: str):
        return not self.is_output_port(port)

    def is_output_port(self, port: str):
        return port in ("Y", "S", "SO", "CO", "C1", "Q", "QN")

    def parse(self, fname):
        """ parse dc generated verilog """

        PIs: List[str] = []  # a list of PI nodes
        POs: List[str] = []  # a list of PO nodes
        nodes: List[Tuple[str, Dict[str, str]]] = [
            ("1'b0", {"type": "1'b0"}),
            ("1'b1", {"type": "1'b1"}),
        ]  # a list of (node, {"type": type})
        edges: List[
            Tuple[str, str, Dict[str, bool]]
        ] = []  # a list of (src, dst, {"is_reverted": is_reverted})
        num_wire = 0

        ast, directives = parse([fname])

        adder_inputs = set()
        adder_outputs = set()
        top_module = None
        adder_in_dict = collections.defaultdict(set)
        adder_out_dict = collections.defaultdict(set)
        for module in ast.description.definitions:
            if module.name == self.top_module:
                top_module = module
                break
        assert top_module is not None, "top module {} not found".format(self.top_module)
        for item in top_module.items:
            if type(item) != pyverilog.vparser.ast.InstanceList:
                continue
            instance = item.instances[0]
            module = instance.module
            name = instance.name
            ports = instance.portlist
            if module.startswith("SNPS_CLOCK") or module.startswith("PlusArgTimeout"):
                continue
            if "DFF" in module:
                continue
            fanins: List[Tuple[str, str]] = []  # list of (portname, argname)
            fanouts: List[Tuple[str, str]] = []  # list of (portname, argname)
            for p in ports:
                portname, argname = p.portname, p.argname
                if type(argname) == pyverilog.vparser.ast.Pointer:
                    argname = str(argname.var) + "_" + str(argname.ptr)
                elif type(argname) == pyverilog.vparser.ast.IntConst:
                    argname = argname.__str__()
                else:  # just to show there could be various types!
                    argname = argname.__str__()
                if portname in ("CLK"):  # clock
                    continue
                elif self.is_output_port(portname):  # output port
                    if (portname, argname) not in fanouts:
                        fanouts.append((portname, argname))
                    for kw in self.adder_keywords:
                        if kw in name:
                            component = name[0 : name.rfind("_")]
                            if component not in argname:
                                adder_outputs.add(argname)
                                adder_out_dict[component].add(argname)
                        elif kw not in name and kw in argname:  # sounds impossible...
                            item.show()
                            assert False
                else:  # input port
                    if (portname, argname) not in fanins:
                        fanins.append((portname, argname))
                    for kw in self.adder_keywords:
                        if kw in name:
                            component = name[0 : name.rfind("_")]
                            if component not in argname:
                                adder_inputs.add(argname)
                                adder_in_dict[component].add(argname)
                        elif kw in argname:
                            component = argname[0 : argname.rfind("_")]
                            if component not in name:
                                adder_outputs.add(argname)
                                adder_out_dict[component].add(argname)

            if not fanouts:
                item.show()
                print("***** warning, the above gate has no fanout recognized! *****")
                # assert False, "no fanout recognized"
            ntype = module[0 : module.find("X", 1)]
            if ntype == "":
                print(module)
            if ntype == "MU":
                ntype = module[:5]
            pos = re.search("\d", ntype)
            if pos:
                ntype = ntype[: pos.start()]
            for pin, o in fanouts:
                # if ntype == "HADD":
                #     if pin == "SO":
                #         ntype = "XOR"
                #     elif pin == "C1":
                #         ntype = "AND"
                #     else:
                #         print(pin)
                #         assert False
                # elif ntype == "FADD":
                #     if pin == "S":
                #         ntype = "XOR"
                #     elif pin == "CO":
                #         ntype = "MAJ"
                #     else:
                #         print(pin)
                #         assert False
                nodes.append((o, {"type": ntype}))
            for _, i in fanins:
                for out_port, o in fanouts:
                    if ntype == "DFF" and out_port == "QN":
                        inserted_inv = name + "_NOT"
                        nodes.append((inserted_inv, {"type": "INV"}))
                        edges.append((i, inserted_inv, {"is_reverted": False}))
                        edges.append((inserted_inv, o, {"is_reverted": False}))
                    else:  # combinational component
                        edges.append((i, o, {"is_reverted": False}))
        print(
            "#inputs:{}, #outputs:{}".format(len(adder_inputs), len(adder_outputs)),
            flush=True,
        )
        gate_names = set([n[0] for n in nodes])
        pis = []
        for (src, _, _) in edges:
            if src not in gate_names and src not in pis:
                nodes.append((src, {"type": "PI"}))
                pis.append(src)

        for n in nodes:
            n[1]["is_input"] = n[0] in adder_inputs
            n[1]["is_output"] = n[0] in adder_outputs
        # print("*** inputs cnt ***")
        # for i, s in adder_in_dict.items():
        #     print("{}:{}".format(i, len(s)))
        # print("*** outputs cnt ***")
        # for i, s in adder_out_dict.items():
        #     print("{}:{}".format(i, len(s)))
        return nodes, edges

    def clip(self, nodes, edges):
        print("start clipping...")
        g = nx.DiGraph()
        g.add_nodes_from(nodes)
        g.add_edges_from(edges)
        alu_nodes: List[str] = [n for n in nodes if "alu_DP_OP" in n[0]]
        n_names = [n[0] for n in alu_nodes]
        for a in alu_nodes:
            v = a[0]
            local_nodes = [
                dst
                for src, dst in nx.bfs_edges(g, v, False, depth_limit=8)
                if dst not in n_names
            ]
            n_names.extend(local_nodes)
            local_nodes = [
                dst
                for src, dst in nx.bfs_edges(g, v, True, depth_limit=8)
                if dst not in n_names
            ]
            n_names.extend(local_nodes)
        nodes = [n for n in nodes if n[0] in n_names]
        edges = [(s, d, p) for s, d, p in edges if s in n_names and d in n_names]
        return nodes, edges

    def remove_div(self, nodes, edges, kw="DP_OP"):
        print("removing muldiv...", flush=True)

        def is_valid(x):
            return kw not in x or x.startswith("alu_DP_OP")

        new_nodes = [n for n in nodes if is_valid(n[0])]
        valid_names = set(n[0] for n in new_nodes)
        new_edges = [
            (s, d, p) for s, d, p in edges if s in valid_names and d in valid_names
        ]

        dsts = set(d for _, d, _ in new_edges)
        added_pi = 0
        for name, prop in new_nodes:  # no fanin after removing div
            if name not in dsts:
                prop["type"] = "PI"
                added_pi += 1

        print(" added pi: {}".format(added_pi))
        return new_nodes, new_edges


def main():
    # folder = "../dc/rocket/implementation/"
    folder = "../dc/boom/implementation/"
    total_nodes = 0
    total_edges = 0
    ntype = set()
    for v in os.listdir(folder):
        if v.startswith("hier"):
            continue
        vf = os.path.join(folder, v)
        print("parsing {}...".format(vf))
        parser = DcParser("BoomCore", ["alu_DP_OP", "add_x"])
        # parser = DcParser("Rocket", ["alu_DP_OP", "add_x"])
        nodes, edges = parser.parse(vf)
        print("nodes {}, edges {}".format(len(nodes), len(edges)))
        # nodes, edges = parser.clip(nodes, edges)
        nodes, edges = parser.remove_div(nodes, edges)
        print("clipped: nodes {}, edges {}".format(len(nodes), len(edges)))

        for n in nodes:
            ntype.add(n[1]["type"])
        total_nodes += len(nodes)
        total_edges += len(edges)
        return
    print(ntype)
    print(total_nodes, total_edges)


if __name__ == "__main__":
    # dc_parser("../dc/simple_alu/implementation/alu_d0.20_r2_bounded_fanout_adder.v")
    # main()
    cProfile.run("main()")
