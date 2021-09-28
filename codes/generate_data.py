import networkx as nx
from matplotlib import pyplot as plt
import random
from typing import List, Dict, Tuple, Optional
import pyverilog
from pyverilog.vparser.parser import parse
import re
from options import get_options
import os
import dgl
import torch as th
# idx2type = {
#     0:'PI',
#     1:'AND',
#     2:'OR',
#     3:"NAND",
#     4:"NOR",
#     5:'XOR'
# }
# g = dgl.DGLGraph([(1,3),(2,3),(4,6),(5,6),(3,7),(6,7)])
# g.ndata['type'] = th.tensor([0,0,1,2,2,3,4,5])



class PortInfo:
    ptype: str
    portname: str
    argname: str
    argcomp: str
    is_output:str

    def __init__(self, portname, argname, argcomp):
        self.ptype = None
        self.portname = portname
        self.argname = argname
        self.argcomp = argcomp
        self.is_output = False


class DcParser:
    def __init__(
            self, top_module: str
    ):
        self.top_module = top_module
        self.hadd_name_dict = {}
        self.hadd_name_dict["hadd_s"] = "XOR2"
        self.hadd_name_dict["hadd_c"] = "AND2"
        self.hadd_name_dict["fadd_s"] = "XOR3"
        self.hadd_name_dict["fadd_c"] = "MAJ"


    def is_input_port(self, port: str) -> bool:
        return not self.is_output_port(port)

    def is_output_port(self, port: str) -> bool:
        return port in ("Y", "S", "SO", "CO", "C1", "Q", "QN")

    def parse_port(
            self, port: pyverilog.vparser.parser.Portlist
    ) -> PortInfo:
        portname, argname = port.portname, port.argname
        if type(argname) == pyverilog.vparser.ast.Partselect:
            print(argname)
        if type(argname) == pyverilog.vparser.ast.Pointer:
            argname = str(argname.var) + "_" + str(argname.ptr)
        elif type(argname) == pyverilog.vparser.ast.IntConst:
            argname = argname.__str__()
        else:  # just to show there could be various types!
            argname = argname.__str__()
        argcomp = argname[: argname.rfind("_")]


        port_info = PortInfo(portname, argname, argcomp)

        if portname in ("CLK"):  # clock
            port_info.ptype = "CLK"
        elif self.is_output_port(portname):
            port_info.ptype = "fanout"
        else:
            port_info.ptype = "fanin"

        if 'O' in argname:
            port_info.is_output = True
        return port_info


    def parse(self, fname):
        """ parse dc generated verilog """
        # adder_cells = set()

        PIs: List[str] = []  # a list of PI nodes
        POs: List[str] = []  # a list of PO nodes
        mult_infos = {}  # {mcomp:([(mult_input_wire,position)],[mult_output_wire,position])}
        nodes: List[Tuple[str, Dict[str, str]]] = [
        ]  # a list of (node, {"type": type})
        edges: List[
            Tuple[str, str, Dict[str, bool]]
        ] = []  # a list of (src, dst, {"is_reverted": is_reverted})
        num_wire = 0
        ast, directives = parse([fname])
        index01 = [0, 0]

        output_node = None

        top_module = None

        for module in ast.description.definitions:
            if module.name == self.top_module:
                top_module = module
                break
        assert top_module is not None, "top module {} not found".format(self.top_module)

        for item in top_module.items:
            if type(item) != pyverilog.vparser.ast.InstanceList:
                continue
            instance = item.instances[0]

            # we extract the following parts:
            # mcell: cell name in SAED, e.g. AND2X1
            # mtype: cell type with input shape, e.g. AND2
            # mfunc: cell function, e.g. AND2
            # mname: module name, e.g. ALU_DP_OP_J23_U233
            # mcomp: module component, e.g. ALU_DP_OP_J23
            mcell = instance.module  # e.g. AND2X1
            mname = instance.name
            ports = instance.portlist
            mtype = mcell[0: mcell.rfind("X")]  # e.g. AND2
            mfunc = mtype  # e.g. AND2

            # pos = re.search("\d", mtype)
            # if pos:
            #     mfunc = mtype[: pos.start()]
            mcomp = mname[: mname.rfind("_")]
            if mcell.startswith("SNPS_CLOCK") or mcell.startswith("PlusArgTimeout"):
                continue
            fanins: List[PortInfo] = []
            fanouts: List[PortInfo] = []

            for p in ports:
                port_info = self.parse_port(p)
                if port_info.is_output:
                    output_node = port_info.argname
                if port_info.ptype== "fanin" :
                    fanins.append(port_info)
                elif port_info.ptype == "fanout" :
                    fanouts.append(port_info)
            if not fanouts:
                item.show()
                print("***** warning, the above gate has no fanout recognized! *****")
            inputs = {}
            # print(mfunc,mname)
            for fo in fanouts:
                if mfunc == "HADD":
                    if fo.portname == "SO":
                        ntype = self.hadd_name_dict["hadd_s"]
                    elif fo.portname == "C1":
                        ntype = self.hadd_name_dict["hadd_c"]
                    else:
                        print(fo.portname)
                        assert False
                elif mfunc == "FADD":
                    if fo.portname == "S":
                        ntype = self.hadd_name_dict["fadd_s"]
                    elif fo.portname == "CO":
                        ntype = self.hadd_name_dict["fadd_c"]
                    else:
                        print(fo.portname)
                        assert False
                else:
                    ntype = mfunc

                if 'AO' in ntype or 'OA' in ntype:

                    num_inputs = ntype[re.search('\d', ntype).start():]
                    ntype1 = 'AND2' if 'AO' in ntype else 'OR2'
                    ntype2 = 'OR{}'.format(len(num_inputs)) if 'AO' in ntype else 'AND{}'.format(len(num_inputs))
                    if 'I' in ntype:
                        output_name = '{}_i'.format(fo.argname)
                        nodes.append((output_name, {"type": ntype2}))
                        nodes.append((fo.argname, {"type": 'INV'}))
                        inputs[fo.argname] = [(output_name,'A')]
                    else:
                        output_name = fo.argname
                        nodes.append((output_name, {"type": ntype2}))
                    inputs[output_name] = inputs.get(output_name, [])
                    for i, num_input in enumerate(num_inputs):
                        if num_input == '2':
                            h_node_name = '{}_h{}'.format(fo.argname, i)
                            nodes.append((h_node_name, {"type": ntype1}))
                            inputs[h_node_name] = inputs.get(h_node_name, [])
                            inputs[h_node_name].append((fanins[2 * i].argname,'A1'))
                            inputs[h_node_name].append((fanins[2 * i + 1].argname,'A2'))

                            inputs[output_name].append((h_node_name,'A{}'.format(i+1)))

                        elif num_input == '1':
                            inputs[output_name].append((fanins[2 * i].argname,'A{}'.format(i+1)))
                        else:
                            print(ntype, i, num_input)
                            assert False
                # elif 'NOR' in ntype or 'XNOR' in ntype or 'NAND' in ntype or 'IBUFF' in ntype:
                #     ntype1= None
                #     if 'NOR' in ntype:
                #         ntype1 = 'OR'
                #     elif 'XNOR' in ntype:
                #         ntype1 = 'XOR'
                #     elif 'NAND' in ntype:
                #         ntype1 = 'AND'
                #     elif 'IBUFF' in ntype:
                #         ntype1 = 'NBUFF'
                #     h_node_name ="{}_h".format(fo.argname)
                #     nodes.append((h_node_name,{"type":ntype1}))
                #     nodes.append((fo.argname,{"type":"INV"}))
                #     inputs[fo.argname] = [h_node_name]
                #     inputs[h_node_name] = inputs.get(h_node_name,[])
                #     for fi in fanins:
                #         inputs[h_node_name].append(fi.argname)
                #     # edges.append((h_node_name,fo.argname,
                #     #               {"is_reverted": False, "is_sequencial": "DFF" in mtype}))
                # elif 'DFF' in ntype and port_info.portname=='QN':
                #     #print(ntype,port_info.argname,port_info.position)
                #     ntype1 = 'DFFN'
                #     h_node_name = "{}_h".format(fo.argname)
                #     nodes.append((h_node_name, {"type": ntype1}))
                #     nodes.append((fo.argname, {"type": "INV"}))
                #     inputs[fo.argname] = [h_node_name]
                #     inputs[h_node_name] = inputs.get(h_node_name, [])
                #     for fi in fanins:
                #         inputs[h_node_name].append(fi.argname)
                #     # edges.append((h_node_name,fo.argname,
                #     #               {"is_reverted": False, "is_sequencial": "DFF" in mtype}))

                else:
                    pos = re.search("\d", mtype)
                    if pos:
                        ntype = ntype[: pos.start()+1]

                    inputs[fo.argname] = inputs.get(fo.argname, [])
                    if mfunc in ('HADD','FADD'):
                        for i,fi in enumerate(fanins):
                            inputs[fo.argname].append((fi.argname, 'A{}'.format(i+1)))
                    else:
                        for fi in fanins:
                            inputs[fo.argname].append((fi.argname,fi.portname))

                    nodes.append((fo.argname, {"type": ntype}))

            for output, inputs in inputs.items():

                for (fi,port) in inputs:
                    edges.append(
                        (
                            fi,
                            output,
                            {"port": port},
                        )
                    )

        gate_names = set([n[0] for n in nodes])
        pis = []
        for (src, _, _) in edges:
            if src not in gate_names and src not in pis:
                nodes.append((src, {"type": "PI"}))
                pis.append(src)
            # if "1'b0" in src :
            #     nodes.append((src,{"type":"1'b0"}))
            # if "1'b1" in src :
            #     nodes.append((src,{"type":"1'b1"}))

        nid = 0
        new_nodes = []
        node2id = {}
        new_edges = []
        output_nid = None
        for node in nodes:
            if node2id.get(node[0],None) is None:
                node2id[node[0]] = nid
                new_nodes.append((nid,node[1]))
                if node[0] == output_node:
                    output_nid = nid
                nid += 1
        for edge in edges:
            new_edges.append(
                (
                    node2id[edge[0]],
                    node2id[edge[1]],
                    edge[2]
                )
            )
        return output_nid,new_nodes,new_edges
        #return output_node,nodes, edges

# nx.draw_shell(g, with_labels=True, font_weight='bold')  # 节点按序排列
# plt.show()
# g.remove_edge(1,3)
# g.remove_edge(2,3)
# g.remove_edge(3,7)
# g.add_edge(8,7)
# g.add_edge(9,8)
# g.add_edge(1,9)
# g.add_edge(2,9)
# nx.draw_shell(g, with_labels=True, font_weight='bold')  # 节点按序排列
# plt.show()
#exit()
 # equal_replaces: list the equal implementations for each gate
 # {gate_name: [gate implementations]}
nid = 0
equal_replaces = {}

class Cell:
    nodes:dict
    output_link:str
    input_links:list
    edges:list
    def __init__(self,nodes,edges,output_link,input_links):
        self.nodes = nodes
        self.edges = edges
        self.output_link = output_link
        self.input_links = input_links

equal_replaces['AND2'] = [
    # AND = NOR(INV,INV)
    Cell(
        nodes = {'o':(1,{'type':'NOR2'}),
                 'i1':(2,{'type':'INV'}),'i2':(3,{'type':'INV'})},
        edges = [('i1','o','A1'),('i2','o','A2')],
        output_link= 'o',
        input_links= {'A1':[('i1','A')], 'A2':[('i2','A')]}
    ),
    # AND = INV(NAND)
    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'NAND2'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')], 'A2':[('i1','A2')]}
    )
]
equal_replaces['AND3'] = [
    # AND = NOR(INV,INV)
    Cell(
        nodes = {'o':(1,{'type':'NOR3'}),
                 'i1':(2,{'type':'INV'}),'i2':(3,{'type':'INV'}),'i3':(4,{'type':'INV'})},
        edges =  [('i1','o','A1'),('i2','o','A2'),('i3','o','A3')],
        output_link= 'o',
        input_links= {'A1':[('i1','A')], 'A2':[('i2','A')],'A3':[('i3','A')]}
    ),
    # AND = INV(NAND)
    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'NAND3'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')], 'A2':[('i1','A2')],'A3':[('i1','A3')]}
    )
]
equal_replaces['AND4'] = [
    # AND = NOR(INV,INV)
    Cell(
        nodes = {'o':(1,{'type':'NOR4'}),
                 'i1':(2,{'type':'INV'}),'i2':(3,{'type':'INV'}),'i3':(4,{'type':'INV'}),'i4':(5,{'type':'INV'})},
        edges = [('i1','o','A1'),('i2','o','A2'),('i3','o','A3'),('i4','o','A4')],
        output_link= 'o',
        input_links= {'A1':[('i1','A')], 'A2':[('i2','A')],'A3':[('i3','A')],'A4':[('i4','A')]}
    ),
    # AND = INV(NAND)
    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'NAND4'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')], 'A2':[('i1','A2')],'A3':[('i1','A3')],'A4':[('i1','A4')]}
    )
]

equal_replaces['NAND2'] = [
    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'AND2'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')], 'A2':[('i1','A2')]}
    )
]
equal_replaces['NAND3'] = [
    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'AND3'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')], 'A2':[('i1','A2')],'A3':[('i1','A3')]}
    )
]
equal_replaces['NAND4'] = [
    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'AND4'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')], 'A2':[('i1','A2')],'A3':[('i1','A3')],'A4':[('i1','A4')]}
    )
]

equal_replaces['OR2'] = [
    # OR = NAND(INV,INV)
    Cell(
        nodes = {'o':(1,{'type':'NAND2'}),'i1':(2,{'type':'INV'}),
                 'i2':(3,{'type':'INV'})},
        edges = [('i1','o','A1'),('i2','o','A2')],
        output_link= 'o',
        input_links= {'A1':[('i1','A')], 'A2':[('i2','A')]},
    ),
    # OR = INV(NOR)
    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'NOR2'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')], 'A2':[('i1','A2')]}
    ),

    # a+b = a +a'b
    Cell(
        nodes = {'o':(1,{'type':'OR2'}),
                 'w1':(2,{'type':'AND2'}),
                 'i1':(2,{'type':'INV'}),
                 },
        edges = [('w1','o','A2'),('i1','w1','A1')],
        output_link= 'o',
        input_links= {'A1':[('o','A1'),('i1','A')],'A2':[('w1','A2')]}
    ),

    # a+b = a+a'b = a(b+b') + a'b = ab + (ab'+a'b)
    #     = ab + xor(a,b)
    Cell(
        nodes = {'o':(1,{'type':'OR2'}),
                 'w1':(2,{'type':'AND2'}),'w2':(3,{'type':'XOR2'}),
                 },
        edges = [('w1','o','A1'),('w2','o','A2')],
        output_link= 'o',
        input_links= {'A1':[('w1','A1'),('w2','A1')],'A2':[('w1','A2'),('w2','A2')]}
    )

]

equal_replaces['OR3'] = [
    # OR = NAND(INV,INV)
    Cell(
        nodes = {'o':(1,{'type':'NAND3'}),'i1':(2,{'type':'INV'}),
                 'i2':(3,{'type':'INV'}),'i3':(4,{'type':'INV'})},
        edges = [('i1','o','A1'),('i2','o','A2'),('i3','o','A3')],
        output_link= 'o',
        input_links={'A1':[('i1','A')], 'A2':[('i2','A')],'A3':[('i3','A')]},
    ),
    # OR = INV(NOR)
    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'NOR3'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')], 'A2':[('i1','A2')],'A3':[('i1','A3')]}
    ),

    # a+b+c =  a + a'(b+c)
    Cell(
        nodes = {'o':(1,{'type':'OR2'}),
                 'w1':(2,{'type':'AND2'}),
                 'i1':(2,{'type':'INV'}),
                 'i2':(2,{'type':'OR2'})},
        edges = [('w1','o','A2'),('i1','w1','A1'),('i2','w1','A2')],
        output_link= 'o',
        input_links= {'A1':[('o','A1'),('i1','A')],'A2':[('i2','A1')],'A3':[('i2','A2')]}
    ),

    # a+b+c = a +a'(b+c) = ab + xor(a,b) +a'c
    Cell(
        nodes = {
            'o':(1,{'type':'OR3'}),
            'w1':(2,{'type':'AND2'}),'w2':(3,{'type':'XOR2'}),'w3':(4,{'type':'AND2'}),
            'i1':(5,{'type':'INV'})
        },
        edges=[('w1','o','A1'),('w2','o','A2'),('w3','o','A3'),('i1','w3','A1')],
        output_link='o',
        input_links= {'A1':[('w1','A1'),('w2','A1'),('i1','A')],'A2':[('w1','A2'),('w2','A2')],'A3':[('w3','A2')]}
    )
]

equal_replaces['OR4'] = [
    # OR = NAND(INV,INV)
    Cell(
        nodes = {'o':(1,{'type':'NAND4'}),'i1':(2,{'type':'INV'}),
                 'i2':(3,{'type':'INV'}),'i3':(4,{'type':'INV'}),'i4':(5,{'type':'INV'})},
        edges = [('i1','o','A1'),('i2','o','A2'),('i3','o','A3'),('i4','o','A4')],
        output_link= 'o',
        input_links=  {'A1':[('i1','A')], 'A2':[('i2','A')],'A3':[('i3','A')],'A4':[('i4','A')]},
    ),
    # OR = INV(NOR)
    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'NOR4'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links=  {'A1':[('i1','A1')], 'A2':[('i1','A2')],'A3':[('i1','A3')],'A4':[('i1','A4')]}
    ),

    # a+b+c+d = a+a'(b+c+d)
    Cell(
        nodes = {'o':(1,{'type':'OR2'}),
                 'w1':(2,{'type':'AND2'}),
                 'i1':(2,{'type':'INV'}),
                 'i2':(2,{'type':'OR3'})},
        edges = [('w1','o','A2'),('i1','w1','A1'),('i2','w1','A2')],
        output_link= 'o',
        input_links= {'A1':[('o','A1'),('i1','A')],'A2':[('i2','A1')],'A3':[('i2','A2')],'A4':[('i2','A3')]}
    )
]

equal_replaces['NOR2'] = [

    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'OR2'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')], 'A2':[('i1','A2')]}
    )
]

equal_replaces['NOR3'] = [

    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'OR3'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')], 'A2':[('i1','A2')],'A3':[('i1','A3')]}
    )
]

equal_replaces['NOR4'] = [

    Cell(
        nodes = {'o':(1,{'type':'INV'}),
                 'i1':(2,{'type':'OR4'})},
        edges = [('i1','o','A')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')], 'A2':[('i1','A2')],'A3':[('i1','A3')],'A4':[('i1','A4')]}
    )
]

equal_replaces['XOR2'] = [
    #xor2 = a'b + ab'
    Cell(
        nodes = {'o':(1,{'type':'OR2'}),
                 'w1':(2,{'type':'AND2'}),'w2':(3,{'type':'AND2'}),
                 'i1':(4,{'type':'INV'}),'i2':(5,{'type':'INV'})},
        edges = [('w1','o','A1'),('w2','o','A2'),('i1','w1','A1'),('i2','w2','A2')],
        output_link= 'o',
        input_links= {'A1':[('w2','A1'),('i1','A')],'A2':[('w1','A2'),('i2','A')]}
    ),
    # XOR = INV(XNOR)
    Cell(
        nodes={'o': (1, {'type': 'INV'}),
               'i1': (2, {'type': 'XNOR2'})},
        edges=[('i1', 'o','A')],
        output_link='o',
        input_links={'A1':[('i1','A1')], 'A2':[('i1','A2')]}
    )
]

equal_replaces['XOR3'] = [
    # xor3 = a'b'c + a'bc' + ab'c' + abc
    Cell(
        nodes = {'o':(1,{'type':'OR4'}),
                 'w1':(2,{'type':'AND3'}),'w2':(3,{'type':'AND3'}),'w3':(4,{'type':'AND3'}),'w4':(5,{'type':'AND3'}),
                 'i1':(6,{'type':'INV'}),'i2':(7,{'type':'INV'}),'i3':(8,{'type':'INV'})},
        edges = [('w1','o','A1'),('w2','o','A2'),('w3','o','A3'),('w4','o','A4'),('i1','w1','A1'),('i1','w2','A1'),('i2','w1','A2'),('i2','w3','A2'),('i3','w2','A3'),('i3','w3','A3')],
        output_link= 'o',
        input_links= {'A1':[('i1','A'),('w3','A1'),('w4','A1')],'A2':[('i2','A'),('w2','A2'),('w4','A2')],'A3':[('i3','A'),('w1','A3'),('w4','A3')]}
    ),
    # XOR = INV(XNOR)
    Cell(
        nodes={'o': (1, {'type': 'INV'}),
               'i1': (2, {'type': 'XNOR3'})},
        edges=[('i1', 'o','A')],
        output_link='o',
        input_links={'A1':[('i1','A1')], 'A2':[('i1','A2')],'A3':[('i1','A3')]}
    )
]

equal_replaces['XNOR2'] = [
    # XNOR = INV(XOR)
    Cell(
        nodes={'o': (1, {'type': 'INV'}),
               'i1': (2, {'type': 'XOR2'})},
        edges=[('i1', 'o','A')],
        output_link='o',
        input_links={'A1':[('i1','A1')], 'A2':[('i1','A2')]}
    )
]

equal_replaces['XNOR3'] = [
    # XNOR = INV(XOR)
    Cell(
        nodes={'o': (1, {'type': 'INV'}),
               'i1': (2, {'type': 'XOR3'})},
        edges=[('i1', 'o','A')],
        output_link='o',
        input_links={'A1':[('i1','A1')], 'A2':[('i1','A2')],'A3':[('i1','A3')]}
    )
]

# MAJ(a,b,c) = ab+bc+ac
equal_replaces['MAJ'] = [
    Cell(
        nodes={'o': (1, {'type': 'OR3'}),
               'i1': (2, {'type': 'AND2'}),'i2': (3, {'type': 'AND2'}),'i3': (4, {'type': 'AND2'})
               },
        edges=[('i1', 'o','A1'),('i2', 'o','A2'),('i3', 'o','A3')],
        output_link='o',
        input_links={'A1':[('i1','A1'),('i3','A1')], 'A2':[('i1','A2'),('i2','A1')],'A3':[('i2','A2'),('i3','A2')]}
    )
]

equal_replaces['MUX2'] = [
    # mux2 = s'a+sb
    Cell(
        nodes = {'o':(1,{'type':'OR2'}),
                 'w1':(2,{'type':'AND2'}),'w2':(3,{'type':'AND2'}),
                 'i1':(4,{'type':'INV'})
                 },
        edges= [('w1','o','A1'),('w2','o','A2'),('i1','w1','A1')],
        output_link = 'o',
        input_links = {'A1':[('w1','A2')],'A2':[('w2','A2')],'S0':[('i1','A'),('w2','A1')]}
    )
]

equal_replaces['MUX4'] = [
    # mux4 = s1's0'a + s1's0b + s1s0'c + s1s0d
    Cell(
        nodes = {'o':(1,{'type':'OR4'}),
                 'w1':(2,{'type':'AND3'}),'w2':(3,{'type':'AND3'}),'w3':(4,{'type':'AND3'}),'w4':(5,{'type':'AND3'}),
                 'i1':(6,{'type':'INV'}),'i2':(7,{'type':'INV'})
                 },
        edges= [('w1','o','A1'),('w2','o','A2'),('w3','o','A3'),('w4','o','A4'),('i1','w1','A1'),('i2','w1','A2'),('i1','w2','A1'),('i2','w3','A2')],
        output_link = 'o',
        input_links = {'A1':[('w1','A3')],'A2':[('w2','A3')],'A3':[('w3','A3')],'A4':[('w4','A3')],'S1':[('i1','A'),('w3','A1'),('w4','A1')],'S0':[('i2','A'),('w2','A2'),('w4','A2')]}
    ),
    # mux4 = s1'mux(a,b,s0)+s1mux(c,d,s0)
    Cell(
        nodes = {
          'o':(1,{'type':'OR2'}),
          'w1':(2,{'type':'AND2'}),'w2':(3,{'type':'AND2'}),
          'i1':(4,{'type':'MUX2'}),'i2':(5,{'type':'MUX2'}),'i3':(6,{'type':'INV'}),
        },
        edges=[('w1','o','A1'),('w2','o','A2'),('i1','w1','A2'),('i2','w2','A2'),('i3','w1','A1')],
        output_link= 'o',
        input_links= {'A1':[('i1','A1')],'A2':[('i1','A2')],'A3':[('i2','A1')],'A4':[('i2','A2')],'S1':[('i3','A'),('w2','A1')],'S0':[('i1','S0'),('i2','S0')]}
    )
]

# a(b+c) = ab+ac

# and(and,and) = and
# or(or,or) =  or




def remove_adjacent_inv(g,n1,n2,edge2port):
    sucs = g.successors(n2)
    pre =None
    for item in g.predecessors(n1):
        pre = item

    g.remove_node(n2)

    for suc in sucs:
        new_edge = (pre, suc)
        g.add_edge(new_edge[0], new_edge[1])
        edge2port[new_edge] = edge2port.get(new_edge, [])
        for port in edge2port[(n2,suc)]:
            edge2port[new_edge].append(port)

def random_replace(g,nid,id2type,edge2port):
    rand_idx = random.randint(0, g.number_of_nodes() - 1)
    rand_nid = list(g.nodes.keys())[rand_idx]
    ntype = id2type[rand_nid]
    if ntype == 'PI' or ntype == 'INV':
        return (nid,False)
    sucessors = list(g.successors(rand_nid))
    predecessors = list(g.predecessors(rand_nid))
    fanins = {}
    for predecessor in predecessors:
        ports = edge2port[(predecessor, rand_nid)]
        for port in ports:
            fanins[port] = predecessor
    #print('fanins:',fanins)
    # if int(ntype[-1])!= len(fanins):
    #     print(ntype[-1],fanins)
    if ntype == 'MUX2':
        assert len(fanins)==3
    elif ntype == 'MUX4':
        assert len(fanins)==6
    else:
        assert int(ntype[-1])== len(fanins)
    # fanins = sorted(fanins.items())
    # predecessors = {}
    # for fanin in fanins:
    #     predecessors.append(fanin[1])
    # if ntype == 'MUX':
    #     fanins = {}
    #     for predecessor in predecessors:
    #         port = edge2port[(predecessor,rand_nid)]
    #         fanins[port] = predecessor
    #     fanins = sorted(fanins.items())
    #     predecessors = []
    #     for fanin in fanins:
    #         predecessors.append(fanin[1])


    g.remove_node(rand_nid)
    for predecessor in predecessors:
        edge2port.pop((predecessor,rand_nid))
    replaces = equal_replaces[ntype]
    rand_index = random.randint(0, len(replaces) - 1)
    replace_cell = replaces[rand_index]
    nodes = replace_cell.nodes
    new_nodes = {}
    for i, (var, nd) in enumerate(nodes.items()):
        if var == 'o':
            new_nodes[var] = (rand_nid,nd[1])
        else:
            new_nodes[var] = (nid, nd[1])
            nid += 1

    # replace the original gate with new gates
    g.add_nodes_from(new_nodes.values())
    for node in new_nodes.values():
        id2type[node[0]] = node[1]['type']

    for edge in replace_cell.edges:
        new_edge = (new_nodes[edge[0]][0], new_nodes[edge[1]][0])
        g.add_edge(new_edge[0], new_edge[1])
        edge2port[new_edge] = edge2port.get(new_edge, [])
        edge2port[new_edge].append(edge[2])
    # link PI/PO
    for sucessor in sucessors:
        new_edge = (new_nodes[replace_cell.output_link][0], sucessor)
        g.add_edge(new_edge[0],new_edge[1])
        edge2port[new_edge] = edge2port[(rand_nid,sucessor)]

    for port,fanin in fanins.items():
        for pi in replace_cell.input_links[port]:
            new_edge = (fanin, new_nodes[pi[0]][0])
            g.add_edge(new_edge[0],new_edge[1])
            edge2port[new_edge] = edge2port.get(new_edge, [])
            edge2port[new_edge].append(pi[1])
    print('modified nodes:', list(g.nodes.items()))
    #print('edges:', edge2port)
    #print(g.edges)
    num_remove = 0
    # remove adjacent INVs
    if new_nodes[replace_cell.output_link][1]['type'] == 'INV':
        for sucessor in sucessors:
            if id2type[sucessor] == 'INV':
                num_remove += 1
                #print('\t\tsuc remove:({},{})'.format(new_nodes[replace_cell.output_link][0], sucessor))
                remove_adjacent_inv(g, new_nodes[replace_cell.output_link][0], sucessor,edge2port)
        if len(list(g.successors(new_nodes[replace_cell.output_link][0])))==0:
            g.remove_node(new_nodes[replace_cell.output_link][0])
    for port,fanin in fanins.items():
        if id2type[fanin] == 'INV':
            for node,p in replace_cell.input_links[port]:
                if new_nodes[node][1]['type'] == 'INV':
                    num_remove += 1
                    #print('\t\tpre remove:({},{})'.format(fanin, new_nodes[node][0]))
                    remove_adjacent_inv(g, fanin, new_nodes[node][0],edge2port)
            if len(list(g.successors(fanin)))==0:
                g.remove_node(fanin)
    print('\treplaced_node', ntype,"removed inv:",num_remove)
    return (nid,True)

# and(and,and) = and
#

# a + bc = (a+b)(a+c)
# ab+a'c+bc = ab+a'c
def simplify(g,n,id2type,edge2port):
    if id2type[n] == 'OR':
        predecessors = list(g.predecessors(n))
        successors = list(g.successors(n))
        if len(predecessors)==2:
            pre1, pre2 = predecessors[0], predecessors[1]
            # b+b'=1
            if (id2type[pre1]=='INV' and list(g.predecessors(pre1))[0]== pre2) \
                or id2type[pre2]=='INV' and list(g.predecessors(pre2))[0]== pre1:
                g.remove_node(n)
                g.add_node((n,{'type':"1'b1"}))
                for suc in successors:
                    g.add_edge(n,suc)
            # a+1 = 1
            elif id2type[pre1] =="1'b1" or id2type[pre2]=="1'b1":
                g.remove_node(n)
                g.add_node((n,{'type':"1'b1"}))
                for suc in successors:
                    g.add_edge(n, suc)
            # a+ 0 = a
            elif id2type[pre1] =="1'b0":
                g.remove_node(n)
                for suc in successors:
                    g.add_edge(n,pre2)
            elif id2type[pre2] =="1'b0":
                g.remove_node(n)
                for suc in successors:
                    g.add_edge(n, pre1)

        # a+1 = 1

        # a+ 0 = a
        # a*0 = 0
        # a*1 = a

        # ab + ac+ ad = a(b+c+d)

        if len(predecessors)==2:
            pre1,pre2 = predecessors[0],predecessors[1]
            if (id2type[pre1] == 'AND' and id2type[pre2]=='AND'):
                pre_predecessors1 = list(g.predecessors(pre1))
                pre_predecessors2 = list(g.predecessors(pre2))




def if_xor(g,nid):

    pass



# nor xor nand and or inv xnor, mux ,maj

# 主要是要搞一个 xor 到 and, or的变换

# 给定一个网表，随机从中间选取节点，然后进行随机等价替换？

def is_xor(graph, root_node):
    pass

def transform(nodes,edges,options):
    if options.num_input == 2:
        num2replace = 1
    elif options.num_input == 3:
        num2replace = 2
    elif options.num_input == 4:
        num2replace = 3
    elif options.num_input in (5, 6):
        num2replace = 4
    elif options.num_input in (6, 7):
        num2replace = 5
    else:
        num2replace = 6
    num_replaced = 0
    print('original num_nodes:{}, num_edges:{}'.format(len(nodes), len(edges)))
    # print("original nodes:", nodes)
    # print("original edges:", edges)
    id2type = {}
    edge2port = {}
    g = nx.DiGraph()
    g.add_edges_from(edges)
    g.add_nodes_from(nodes)

    for n in nodes:
        id2type[n[0]] = n[1]['type']
    for edge in edges:
        edge2port[(edge[0], edge[1])] = edge2port.get((edge[0], edge[1]), [])
        edge2port[(edge[0], edge[1])].append(edge[2]['port'])
    # print(id2type)
    # print(edge2port)

    num_nodes = g.number_of_nodes()
    nid = num_nodes + 1
    while num_replaced < num2replace:
        nid, flag_replace = random_replace(g, nid, id2type, edge2port)
        if flag_replace:
            num_replaced += 1
        # print(ntype,replace_cell.nodes,replace_cell.edges)
    # print('modified nodes:',list(sorted(g.nodes.items())))
    # print('modified edges:',list(g.edges.items()))
    print('modified num_nodes:{}, num_edges:{}'.format(g.number_of_nodes(), g.number_of_edges()))
    res_edges = []
    for edge in g.edges().items():
        res_edges.append((edge[0][0],edge[0][1],edge[1]))
    return (list(g.nodes.items()),res_edges)

def  main():

    options = get_options()
    datapath = os.path.join(options.save_dir,"i{}/implementation".format(options.num_input))
    for vf in os.listdir(datapath):
        if not vf.endswith('.v'):
            continue
        print('\ngenerate positive samples for {}'.format(vf))
        value = vf.split('_')[2][1:]
        parser = DcParser('i{}_v{}'.format(options.num_input,value))
        output_nid,nodes,edges = parser.parse(os.path.join(datapath,vf))

        if len(nodes)==0:
            print('empty...')
            continue
        for i in range(2):
            new_nodes,new_edges = transform(nodes.copy(),edges.copy(),options)


if __name__ == "__main__":
    main()