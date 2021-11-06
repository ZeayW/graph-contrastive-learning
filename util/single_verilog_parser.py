import os
import collections

from typing import List, Dict, Tuple, Optional
import pyverilog
from pyverilog.vparser.parser import parse
import re

import networkx as nx

import cProfile

def parse_arg(arg,port_info,ios,wires):

    if type(arg) == pyverilog.vparser.ast.Identifier:
        if wires.get(arg.name,None) is not None:
            high_bit, low_bit = wires[arg.name]
        elif ios.get(arg.name,None) is not None:
            high_bit, low_bit = ios[arg.name]
            port_info.flag_update = True
            port_info.args_need_update.add(arg.name)
        else:
            assert False
        width = high_bit-low_bit+1
        if width == 1:
            port_info.arg_list.append(arg.name)
        else:
            for i in range(high_bit,low_bit-1,-1):
                port_info.arg_list.append("{}_{}".format(arg,i))
        #arg.show()
    elif type(arg) == pyverilog.vparser.ast.IntConst:
        port_info.arg_list.append(arg.value)
    elif type(arg) == pyverilog.vparser.ast.Partselect:
        arg_nm,high_bit,low_bit = arg.children()
        arg_nm = arg_nm.name
        high_bit, low_bit = int(str(high_bit)),int(str(low_bit))
        if high_bit < low_bit:
            temp = high_bit
            high_bit = low_bit
            low_bit = temp
        for i in range(high_bit,low_bit-1,-1):
            port_info.arg_list.append("{}_{}".format(arg_nm,i))
        if ios.get(arg_nm,None) is not None:
            port_info.flag_update = True
            port_info.args_need_update.add(arg_nm)
    elif type(arg) == pyverilog.vparser.ast.Pointer:
        arg_nm, position = arg.children()
        arg_nm = arg_nm.name
        port_info.arg_list.append("{}_{}".format(arg_nm,position))
        if ios.get(arg_nm,None) is not None:
            port_info.flag_update = True
            port_info.args_need_update.add(arg_nm)
    else:
        print(arg)
        assert False

class ModuleInfo:
    cell_name:str
    cell_type:str
    instance_name:str
    ports:dict
    index:int
    def __init__(self,cell_name,cell_type,instance_name):
        self.cell_name = cell_name
        self.cell_type = cell_type
        self.instance_name = instance_name
        self.ports = {}
        self.index = -1
class PortInfo:
    ptype:str
    portname: str
    argname: str
    argcomp: str
    is_input: bool
    is_output: bool
    input_comp: str
    output_comp: str
    arg_list: list
    position:tuple
    flag_update:bool
    args_need_update:set
    def __init__(self, portname,argname, argcomp):
        self.ptype = None
        self.portname = portname
        self.argname = argname
        self.argcomp = argcomp
        self.is_input = False
        self.is_output = False
        self.arg_list = []
        self.position = None
        self.flag_update = False
        self.args_need_update = set()
class DcParser:
    def __init__(
        self, top_module: str, hier_keywords:List[str],adder_keywords: List[str], hadd_type: str = "hadd"
    ):
        self.top_module = top_module
        self.adder_keywords = adder_keywords
        self.hier_keywords = hier_keywords
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

    def parse_report(self,fname):
        with open(fname,'r') as f:
            text = f.read()
        cells  = text.split('Datapath Report for')
        print('number of cells',len(cells))
        cells = cells[1:]
        key_cells = {}
        for cell in cells:
            cell = cell.split('Implementation Report')[0]
            cell = cell[:cell.rfind('\n==============================================================================')]
            cell_name = cell.split('\n')[0].replace(' ','')
            vars = cell[cell.rfind('=============================================================================='):]
            vars = vars.split('\n')[1:]
            #print(cell_name,len(vars))
            var_types = {}
            for var in vars:
                var = var.replace(' ','')
                _,var_name,type,data_class,width,expression,_ =var.split('|')
                var_types[var_name] = (type)
                #print(var_name,type,width,expression)
                if '+' in expression and '-' not in expression:
                    #print(var_name, type, width, expression)
                    key_cells[cell_name] = key_cells.get(var_name, ([], []))
                    if type == 'PO':
                        key_cells[cell_name][1].append(var_name)
                    inputs = expression.split('+')
                    for input in inputs:
                        if var_types.get(input,None) == 'PI':
                            key_cells[cell_name][0].append(input)
        print(key_cells)
                    #key_cells[cell_name][0]
                #print(var)
            #print(vars)

        return key_cells
    def parse_port_hier(
        self, ios:dict,wires:dict, port: pyverilog.vparser.parser.Portlist,
    ) -> PortInfo:
        #print(dir(port))
        portname, argname = port.portname, port.argname
        port_info = PortInfo(portname,None,None)
        
        if type(argname) == pyverilog.vparser.ast.Concat:
            args = argname.children()
            for arg in args:
                parse_arg(arg,port_info,ios,wires)
        else:
            parse_arg(argname,port_info,ios,wires)

        return port_info

    def parse_port(
        self, mcomp: str,port: pyverilog.vparser.parser.Portlist,ios:dict
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
        position = None
        mcomp_lower = mcomp.lower()
        #if 'add_x' in mcomp or "alu_DP_OP" in mcomp: print(portname, argname)
        #if 'div_DP_OP' in mcomp : print(portname,argname)
        #print(portname,argname)

        port_info = PortInfo(portname, argname, argcomp)

        if portname in ("CLK"):  # clock
            port_info.ptype = "CLK"
            return port_info
        elif self.is_output_port(portname):
            port_info.ptype = "fanout"
        else:
            port_info.ptype = "fanin"


        if mcomp != argcomp:

            module_ports = None
            # for module in target_cells.keys():
            #     if module in mcomp:
            #         module_ports = target_cells[module]
            #         break
            # for cases that instance_name is not unique, e.g, have several add_x_1，each is instance of different cell,
            # in theses cases, mcomp contains both cell information and instance information
            for pname,(high_bit,low_bit) in ios.items():
                if pname in argname:
                    bit_position = int(argname.split('_')[-1])
                    if bit_position>=low_bit and bit_position<=high_bit:
                        position = (pname,bit_position)
                    else:
                        print(pname,argname,bit_position)
                        assert  False

            if position is None:
                return port_info
                #print(argname)
                # print(module_ports)
                # print(module_ports)
                # if "1'b0" in argname or "1'b1" in argname:
                #     #port_info.ptype = 'fanin'
                #     return port_info
                # if re.match("n\d+$", argname) is not None:
                #     #port_info.ptype = 'wire'
                #     return port_info
                # print(mcomp)
                # print(portname, argname)
                # # print(module_ports)
                # # position = False
                # pos = argname.split('_')[-1]
                # position = ('E', int(pos))
            #print(portname, argname,position)
            # assert  position is not None
            port_info.position = position

            if self.is_output_port(portname) :

                port_info.is_output = True
                port_info.output_comp = mcomp
            else:
                port_info.is_input = True
                port_info.input_comp = mcomp
        elif argcomp != mcomp:
            #print(kw, argname, mcomp)
            assert False
            port_info.is_output = True
            port_info.output_comp = argcomp

        #if 'add_x' in mcomp or 'alu_DP_OP' in mcomp: print(position)
        return port_info

    def parse(self, fname):
        """ parse dc generated verilog """
        target_cells = {}
        ast, directives = parse([fname])
        positions = {}
        PIs = set()
        POs = set()
        pis = []
        nodes: List[Tuple[str, Dict[str, str]]] = [
            ("1'b0", {"type": "1'b0"}),
            ("1'b1", {"type": "1'b1"}),
        ]  # a list of (node, {"type": type})
        edges: List[
            Tuple[str, str, Dict[str, bool]]
        ] = []  # a list of (src, dst, {"is_reverted": is_reverted})
        args_to_update = {}
        # print(dir(ast))
        # ast.show()
        # print(dir(directives))
        # exit()
        for module in ast.description.definitions:
            #module.show()
            ios = {}
            wires = {}
            for sentence in module.children():
                if type(sentence) == pyverilog.vparser.ast.Decl:

                    for decl in sentence.children():
                        name = decl.name
                        if decl.width is None:
                            high_bit, low_bit = 0, 0
                        else:
                            high_bit, low_bit = decl.width.children()
                            high_bit,low_bit = int(high_bit.value),int(low_bit.value)
                            if high_bit<low_bit:
                                temp = high_bit
                                high_bit = low_bit
                                low_bit = temp
                        if type(decl) == pyverilog.vparser.ast.Input or type(decl) == pyverilog.vparser.ast.Output:
                            # if type(decl) == pyverilog.vparser.ast.Output and re.match('io_pmp_\d_addr',decl.name):
                            #     decl.show()
                            ios[name] = (high_bit, low_bit)
                        else:
                            wires[name] = (high_bit, low_bit)
                # if module.name == 'RoundAnyRawFNToRecFN_1':
                #     module.show()
                #     print(nets)
                #print(type(sentence),dir(sentence))
                elif type(sentence) == pyverilog.vparser.ast.Wire:
                    name = sentence.name
                    wires[name] = (0,0)
            #print(nets)

            #exit()

            for item in module.items:
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
                mtype = mcell[0: mcell.rfind("X")]  # e.g. AND2
                mfunc = mtype  # e.g. AND
                # pos = re.search("\d", mtype)
                # if pos:
                #     mfunc = mtype[: pos.start()]
                mcomp = mname[: mname.rfind("_")]
                if mcell.startswith("SNPS_CLOCK") or mcell.startswith("PlusArgTimeout"):
                    continue
                fanins: List[PortInfo] = []
                fanouts: List[PortInfo] = []
                # if 'add_x' in mcomp or 'alu_DP_OP' in mcomp:
                #     # print("\n",mcell,mname)
                #     adder_cells.add(mcell)
                # exit()
                # key_inputs, key_outputs = [], []
                # for key_cell in key_cells.keys():
                #     if key_cell in mcomp:
                #         key_inputs = key_cells[key_cell][0]
                #         key_outputs = key_cells[key_cell][1]
                #         break

                for p in ports:
                    port_info = self.parse_port(mcomp, p,ios)
                    if port_info.ptype == "fanin":
                        fanins.append(port_info)
                    elif port_info.ptype == "fanout":
                        fanouts.append(port_info)
                    # else:
                    #     assert port_info.ptype == "CLK"
                    if port_info.is_input:
                        # print(port_info.)

                        PIs.add(port_info.argname)
                    if port_info.is_output:
                        POs.add(port_info.argname)
                    if positions.get(port_info.argname, None) is None:
                        positions[port_info.argname] = port_info.position
                if not fanouts:
                    item.show()
                    print("***** warning, the above gate has no fanout recognized! *****")
                    # do not assert, because some gates indeed have no fanout...
                    # assert False, "no fanout recognized"
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
                        ntype1 = 'AND' if 'AO' in ntype else 'OR'
                        ntype2 = 'OR' if 'AO' in ntype else 'AND'
                        if 'I' in ntype:
                            output_name = '{}_i'.format(fo.argname)
                            nodes.append((output_name, {"type": ntype2}))
                            nodes.append((fo.argname, {"type": 'INV'}))
                            inputs[fo.argname] = [output_name]

                            # edges.append((output_name,fo.argname,
                            #               {"is_reverted": False, "is_sequencial": "DFF" in mtype}))
                        else:
                            output_name = fo.argname
                            nodes.append((output_name, {"type": ntype2}))
                        inputs[output_name] = inputs.get(output_name, [])
                        for i, num_input in enumerate(num_inputs):
                            if num_input == '2':
                                h_node_name = '{}_h{}'.format(fo.argname, i)
                                nodes.append((h_node_name, {"type": ntype1}))
                                inputs[h_node_name] = inputs.get(h_node_name, [])
                                inputs[h_node_name].append(fanins[2 * i].argname)
                                inputs[h_node_name].append(fanins[2 * i + 1].argname)

                                inputs[output_name].append(h_node_name)
                                # edges.append((fanins[2*i].argname,h_node_name,
                                #              {"is_reverted": False, "is_sequencial": "DFF" in mtype}))
                                # edges.append((fanins[2 * i+1].argname, h_node_name,
                                #              {"is_reverted": False, "is_sequencial": "DFF" in mtype}))
                                # edges.append((h_node_name,output_name,
                                #               {"is_reverted": False, "is_sequencial": "DFF" in mtype}))
                            elif num_input == '1':
                                inputs[output_name].append(fanins[2 * i].argname)
                                # edges.append((fanins[2*i].argname,output_name,
                                #              {"is_reverted": False, "is_sequencial": "DFF" in mtype}))
                            else:
                                print(ntype, i, num_input)
                                assert False
                    elif 'NOR' in ntype or 'XNOR' in ntype or 'NAND' in ntype or 'IBUFF' in ntype:
                        ntype1 = None
                        if 'NOR' in ntype:
                            ntype1 = 'OR'
                        elif 'XNOR' in ntype:
                            ntype1 = 'XOR'
                        elif 'NAND' in ntype:
                            ntype1 = 'AND'
                        elif 'IBUFF' in ntype:
                            ntype1 = 'NBUFF'
                        h_node_name = "{}_h".format(fo.argname)
                        nodes.append((h_node_name, {"type": ntype1}))
                        nodes.append((fo.argname, {"type": "INV"}))
                        inputs[fo.argname] = [h_node_name]
                        inputs[h_node_name] = inputs.get(h_node_name, [])
                        for fi in fanins:
                            inputs[h_node_name].append(fi.argname)
                        # edges.append((h_node_name,fo.argname,
                        #               {"is_reverted": False, "is_sequencial": "DFF" in mtype}))
                    else:
                        pos = re.search("\d", mtype)
                        if pos:
                            ntype = ntype[: pos.start()]
                        nodes.append((fo.argname, {"type": ntype}))
                        inputs[fo.argname] = inputs.get(fo.argname, [])
                        for fi in fanins:
                            inputs[fo.argname].append(fi.argname)
                # print(len(inputs))
                # print(inputs)
                for fi in fanins:
                    if fi.is_input and fi.argname not in pis:
                        pis.append(fi.argname)
                        nodes.append((fi.argname,{"type":"PI",'position':fi.position}))
                for output, input in inputs.items():
                    for fi in input:

                        edges.append(
                            (
                                fi,
                                output,
                                {"is_reverted": False, "is_sequencial": "DFF" in mtype},
                            )
                        )

                # for fi in inputs:
                #     for fo in fanouts:
                #         edges.append(
                #             (
                #                 fi.argname,
                #                 fo.argname,
                #                 {"is_reverted": False, "is_sequencial": "DFF" in mtype},
                #             )
                #         )
            print(
                "#inputs:{}, #outputs:{}".format(len(PIs), len(POs)),
                flush=True,
            )
            print("end here...")
            # print(adder_inputs)
            gate_names = set([n[0] for n in nodes])

            for (src, _, _) in edges:
                if src not in gate_names and src not in pis:
                    if "1'b0" in src:
                        nodes.append((src, {"type": "1'b0"}))
                    elif "1'b1" in src:
                        nodes.append((src, {"type": "1'b1"}))
                    else:
                        nodes.append((src, {"type": "PI"}))
                    pis.append(src)

            print('------------')
            for n in nodes:
                n[1]["is_input"] = n[0] in PIs
                n[1]["is_output"] = n[0] in POs
                n[1]["position"] = positions.get(n[0], None)
            print('11111111111111111111111')
            #print(adder_cells)
        return nodes, edges




def main():
    folder = "./implementation/test/"
    total_nodes = 0
    total_edges = 0
    ntype = set()

    parser = DcParser("Rocket", hier_keywords=["add", "inc"], adder_keywords=['add_x', 'alu_DP_OP', 'div_DP_OP'],
                      hadd_type="xor")
    for v in os.listdir(folder):
        if v.endswith('.v') is False:
            continue
        nodes,edges = parser.parse(os.path.join(folder,v))
        print("nodes {}, edges {}".format(len(nodes), len(edges)))
        for n in nodes:
            ntype.add(n[1]["type"])
        total_nodes += len(nodes)
        total_edges += len(edges)
        # break
        print(ntype)

    print(total_nodes, total_edges)


if __name__ == "__main__":
    # dc_parser("../dc/simple_alu/implementation/alu_d0.20_r2_bounded_fanout_adder.v")
    main()
    # cProfile.run("main()")
