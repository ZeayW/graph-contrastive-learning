import os
import collections

from typing import List, Dict, Tuple, Optional
import pyverilog
from pyverilog.vparser.parser import parse
import re

import networkx as nx

import cProfile


class PortInfo:
    ptype: str
    portname: str
    argname: str
    argcomp: str
    is_adder_input: bool
    is_adder_output: bool
    input_comp: str
    output_comp: str
    position:int
    def __init__(self, portname, argname, argcomp):
        self.ptype = None
        self.portname = portname
        self.argname = argname
        self.argcomp = argcomp
        self.is_adder_input = False
        self.is_adder_output = False
        self.position = 0

class DcParser:
    def __init__(
        self, top_module: str, adder_keywords: List[str], hadd_type: str = "hadd"
    ):
        self.top_module = top_module
        self.adder_keywords = adder_keywords
        assert hadd_type in ("hadd", "hadd_s", "xor")
        self.hadd_type = hadd_type  # treat hadd sum as either "hadd", "hadd_s", "xor"
        self.hadd_name_dict = {}
        if hadd_type == "hadd":
            self.hadd_name_dict["hadd_s"] = "HADD"
            self.hadd_name_dict["hadd_c"] = "HADD"
            self.hadd_name_dict["fadd_s"] = "FADD"
            self.hadd_name_dict["fadd_c"] = "FADD"
        elif hadd_type == "hadd_s":
            self.hadd_name_dict["hadd_s"] = "HADD_S"
            self.hadd_name_dict["hadd_c"] = "HADD_C"
            self.hadd_name_dict["fadd_s"] = "FADD_S"
            self.hadd_name_dict["fadd_c"] = "FADD_C"
        elif hadd_type == "xor":
            self.hadd_name_dict["hadd_s"] = "XOR"
            self.hadd_name_dict["hadd_c"] = "AND"
            self.hadd_name_dict["fadd_s"] = "XOR"
            self.hadd_name_dict["fadd_c"] = "MAJ"

    def is_input_port(self, port: str) -> bool:
        return not self.is_output_port(port)

    def is_output_port(self, port: str) -> bool:
        return port in ("Y", "S", "SO", "CO", "C1", "Q", "QN")

    def parse_port(
        self, mcomp: str, port: pyverilog.vparser.parser.Portlist,
    ) -> PortInfo:
        portname, argname = port.portname, port.argname
        if type(argname) == pyverilog.vparser.ast.Pointer:
            argname = str(argname.var) + "_" + str(argname.ptr)
        elif type(argname) == pyverilog.vparser.ast.IntConst:
            argname = argname.__str__()
        else:  # just to show there could be various types!
            argname = argname.__str__()
        argcomp = argname[: argname.rfind("_")]
        if 'add_x' in mcomp : print(portname,argcomp)
        port_info = PortInfo(portname, argname, argcomp)
        if portname in ("CLK"):  # clock
            port_info.ptype = "CLK"
            return port_info
        elif self.is_output_port(portname):  # output port
            port_info.ptype = "fanout"
            for kw in self.adder_keywords:
                if kw in mcomp and mcomp != argcomp:
                    port_info.is_adder_output = True
                    port_info.output_comp = mcomp
                elif kw not in mcomp and kw in argname:  # sounds impossible...
                    print(port)
                    assert False
        else:  # input port
            port_info.ptype = "fanin"
            for kw in self.adder_keywords:
                if kw in mcomp and mcomp != argcomp:
                    port_info.is_adder_input = True
                    port_info.input_comp = mcomp
                    position = argname.split('_')[-1]
                    print(position)
                    port_info.position = int(position)
                elif kw in argcomp and argcomp != mcomp:
                    port_info.is_adder_output = True
                    port_info.output_comp = argcomp
        return port_info

    def parse(self, fname, label_region=False):
        """ parse dc generated verilog """
        adder_cells = set()

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
        print(len(top_module.items))
        for item in top_module.items:
            if type(item) != pyverilog.vparser.ast.InstanceList:
                continue
            instance = item.instances[0]
            # we extract the following parts:
            # mcell: cell name in SAED, e.g. AND2X1
            # mtype: cell type with input shape, e.g. AND2
            # mfunc: cell function, e.g. AND
            # mname: module name, e.g. ALU_DP_OP_J23_U233
            # mcomp: module component, e.g. ALU_DP_OP_J23
            mcell = instance.module  # e.g. AND2X1
            mname = instance.name
            ports = instance.portlist
            mtype = mcell[0 : mcell.rfind("X")]  # e.g. AND2
            mfunc = mtype  # e.g. AND
            pos = re.search("\d", mtype)
            if pos:
                mfunc = mtype[: pos.start()]
            mcomp = mname[: mname.rfind("_")]
            if mcell.startswith("SNPS_CLOCK") or mcell.startswith("PlusArgTimeout"):
                continue
            fanins: List[PortInfo] = []
            fanouts: List[PortInfo] = []
            if 'add_x' in mcomp:
                print('\n')
                print(mcell,mcomp,len(ports))
                adder_cells.add(mcell)
           # exit()
            for p in ports:
                port_info = self.parse_port(mcomp, p)
                if port_info.ptype == "fanin":
                    fanins.append(port_info)
                elif port_info.ptype == "fanout":
                    fanouts.append(port_info)
                else:
                    assert port_info.ptype == "CLK"
                if port_info.is_adder_input:
                    adder_inputs.add(port_info.argname)
                    adder_in_dict[port_info.input_comp].add(port_info.argname)
                if port_info.is_adder_output:
                    adder_outputs.add(port_info.argname)
                    adder_out_dict[port_info.output_comp].add(port_info.argname)

            if not fanouts:
                item.show()
                print("***** warning, the above gate has no fanout recognized! *****")
                # do not assert, because some gates indeed have no fanout...
                # assert False, "no fanout recognized"
            for fo in fanouts:
                if mfunc == "HADD":
                    if fo.portname == "SO":
                        ntype = self.hadd_name_dict["hadd_s"]
                    elif fo.portname == "C1":
                        ntype = self.hadd_name_dict["hadd_c"]
                    else:
                        print(pin)
                        assert False
                elif mfunc == "FADD":
                    if fo.portname == "S":
                        ntype = self.hadd_name_dict["fadd_s"]
                    elif fo.portname == "CO":
                        ntype = self.hadd_name_dict["fadd_c"]
                    else:
                        print(pin)
                        assert False
                else:
                    ntype = mfunc
                nodes.append((fo.argname, {"type": ntype}))
            for fi in fanins:
                for fo in fanouts:
                    edges.append(
                        (
                            fi.argname,
                            fo.argname,
                            {"is_reverted": False, "is_sequencial": "DFF" in mtype},
                        )
                    )
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

        if label_region:
            g = nx.DiGraph()
            g.add_nodes_from(nodes)
            g.add_edges_from(edges)
            rg = g.reverse()
            internal = set()

            for m in adder_in_dict:
                in_nodes = list(adder_in_dict[m])
                out_nodes = list(adder_out_dict[m])
                forward_reachable = set()
                backward_reachable = set()
                for i in in_nodes:
                    fw = dict(nx.bfs_successors(g, i, 6))
                    for t in fw.values():
                        forward_reachable.update(set(t))
                for o in out_nodes:
                    bw = dict(nx.bfs_successors(rg, o, 6))
                    for t in bw.values():
                        backward_reachable.update(set(t))
                internal.update(forward_reachable.intersection(backward_reachable))
                i_not_r = 0
                o_not_r = 0
                for i in in_nodes:
                    if i not in backward_reachable:
                        print(i)
                        i_not_r += 1
                for o in out_nodes:
                    if o not in forward_reachable:
                        print(o)
                        o_not_r += 1
                # print("{}: iNOT={}, oNOT={}".format(m, i_not_r, o_not_r))
            for n in nodes:
                n[1]["is_adder"] = n[0] in internal

        else:
            for n in nodes:
                n[1]["is_input"] = n[0] in adder_inputs
                n[1]["is_output"] = n[0] in adder_outputs

        # g = nx.DiGraph()
        # g.add_nodes_from(nodes)
        # g.add_edges_from(edges)
        # for m in adder_in_dict:
        #     in_nodes = list(adder_in_dict[m])
        #     out_nodes = list(adder_out_dict[m])
        #     max_depth = 0
        #     min_depth = 99
        #     for i in in_nodes:
        #         for o in out_nodes:
        #             l = nx.shortest_path_length(g, i, o)
        #             max_depth = max(max_depth, l)
        #             min_depth = min(min_depth, l)
        #     print("{}: {} -> {}".format(m, min_depth, max_depth))

        # print("*** inputs cnt ***")
        # for i, s in adder_in_dict.items():
        #     print("{}:{}".format(i, len(s)))
        # print("*** outputs cnt ***")
        # for i, s in adder_out_dict.items():
        #     print("{}:{}".format(i, len(s)))
        print(adder_cells)
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

        valid_names = set()
        new_nodes = []
        backup_nodes = {}
        for name, prop in nodes:
            if is_valid(name):
                valid_names.add(name)
                new_nodes.append((name, prop))
            else:
                backup_nodes[name] = prop
        new_edges = [(s, d, p) for s, d, p in edges if d in valid_names]

        new_pis = set(s for s, _, _ in new_edges if s not in valid_names)
        for n in new_pis:
            prop = backup_nodes[n]
            prop["type"] = "PI"
            new_nodes.append((n, prop))

        print(" added pi: {}".format(len(new_pis)))
        return new_nodes, new_edges


def main():
    folder = "../dc/rocket/implementation/"
    # folder = "../dc/boom/implementation/"
    total_nodes = 0
    total_edges = 0
    ntype = set()
    for v in os.listdir(folder):
        if v.startswith("hier"):
            continue
        vf = os.path.join(folder, v)
        print("parsing {}...".format(vf))
        # parser = DcParser("BoomCore", ["alu_DP_OP", "add_x"])
        parser = DcParser("Rocket", ["alu_DP_OP", "add_x"], "hadd_s")
        nodes, edges = parser.parse(vf, label_region=True)
        print("nodes {}, edges {}".format(len(nodes), len(edges)))

        # nodes, edges = parser.clip(nodes, edges)
        # nodes, edges = parser.remove_div(nodes, edges)
        # adder_out_type = collections.defaultdict(int)
        # node_type = collections.defaultdict(int)
        # for n in nodes:
        #     if n[1]["is_output"]:
        #         adder_out_type[n[1]["type"]] += 1
        #     node_type[n[1]["type"]] += 1
        # print(node_type)
        # print(adder_out_type)
        # print("clipped: nodes {}, edges {}".format(len(nodes), len(edges)))

        for n in nodes:
            ntype.add(n[1]["type"])
        total_nodes += len(nodes)
        total_edges += len(edges)
        # return
        break
    print(ntype)
    print(total_nodes, total_edges)


if __name__ == "__main__":
    # dc_parser("../dc/simple_alu/implementation/alu_d0.20_r2_bounded_fanout_adder.v")
    main()
    # cProfile.run("main()")
