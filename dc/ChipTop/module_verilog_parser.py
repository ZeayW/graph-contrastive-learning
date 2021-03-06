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
    is_adder_input: bool
    is_adder_output: bool
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
        self.is_adder_input = False
        self.is_adder_output = False
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
            print(cell_name,len(vars))
            var_types = {}
            for var in vars:
                var = var.replace(' ','')
                _,var_name,type,data_class,width,expression,_ =var.split('|')
                var_types[var_name] = (type)
                print(var_name,type,width,expression)
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
        self, mcomp: str,target_cells: list,port: pyverilog.vparser.parser.Portlist,index01:list,key_inputs:list,key_outputs:list
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
        if 'div_DP_OP' in mcomp : print(portname,argname)
        if argname == "1'b0" :
            argname = "{}_{}".format(argname,index01[0])
            index01[0] += 1
        elif argname =="1'b1":
            argname = "{}_{}".format(argname, index01[1])
            index01[1] += 1

        port_info = PortInfo(portname, argname, argcomp)

        if portname in ("CLK"):  # clock
            port_info.ptype = "CLK"
            return port_info
        elif self.is_output_port(portname):
            port_info.ptype = "fanout"
        else:
            port_info.ptype = "fanin"

        is_target = False
        for kw in self.adder_keywords:
            if kw in mcomp :
                is_target = True
                break
        if len(key_inputs)!=0 or len(key_outputs)!=0:
            is_target = True
        if is_target and mcomp != argcomp:
            module_ports = None
            # for module in target_cells.keys():
            #     if module in mcomp:
            #         module_ports = target_cells[module]
            #         break
            # for cases that instance_name is not unique, e.g, have several add_x_1???each is instance of different cell,
            # in theses cases, mcomp contains both cell information and instance information
            for module_info in target_cells:
                if module_info.instance_name.lower() in mcomp.lower():
                    module_ports = module_info.ports
                    break
            if module_ports is None:
                print('module_ports is none', mcomp, portname, argname)
                return port_info
            # assert module_ports is not None
            # print(argname,module_ports)
            for mport in module_ports.keys():
                mport_args = module_ports[mport]
                for i, arg in enumerate(mport_args):
                    if arg.lower() in argname.lower():
                        position = (mport, len(mport_args) - 1 - i)
                        break
            # if position is None:
            #     for mport in module_ports.keys():
            #         mport_args = module_ports[mport]
            #         for i, arg in enumerate(mport_args):
            #             sub1 = arg[arg.find('_') + 1:]
            #             sub2 = sub1[sub1.find('_')+1:]
            #             if sub2.lower() in argname.lower():
            #                 position = (mport, len(mport_args) - 1 - i)
            #                 break
            if position is None:
                # print(module_ports)
                # print(module_ports)
                if "1'b0" in argname or "1'b1" in argname:
                    port_info.ptype = '10'
                    return port_info
                if re.match("n\d+$", argname) is not None:
                    port_info.ptype = 'wire'
                    return port_info
                print(mcomp)
                print(portname, argname)
                # print(module_ports)
                # position = False
                pos = argname.split('_')[-1]
                position = ('E', int(pos))
                # print('output', argname)
                # if position > 100:
                #     assert False
                # print(mcomp,module_ports)
            # assert  position is not None
            port_info.position = position

            if self.is_output_port(portname) :
                if position[0] not in key_outputs:
                    return port_info
                port_info.is_adder_output = True
                port_info.output_comp = mcomp
            else:
                if position[0] not in key_inputs:
                    # print(argname)
                    return port_info
                port_info.is_adder_input = True
                port_info.input_comp = mcomp
        elif is_target and argcomp != mcomp:
            #print(kw, argname, mcomp)
            assert False
            port_info.is_adder_output = True
            port_info.output_comp = argcomp

        #if 'add_x' in mcomp or 'alu_DP_OP' in mcomp: print(position)
        return port_info

    def parse_hier(self, fname,key_cells):
        """ parse dc generated verilog """
        target_cells = {}
        ast, directives = parse([fname])
        args_to_update = {}
        # print(dir(ast))
        # ast.show()
        # print(dir(directives))
        # exit()
        for module in ast.description.definitions:

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
                #print(len(item.instances))
                instance = item.instances[0]
                # we extract the following parts:
                # mcell: cell name in SAED, e.g. AND2X1
                # mname: module name, e.g. ALU_DP_OP_J23_U233
                mcell = instance.module  # e.g. AND2X1
                mname = instance.name
                mcomp = mname[:mname.rfind('_')]
                ports = instance.portlist

                if mcell.startswith("SNPS_CLOCK") or mcell.startswith("PlusArgTimeout"):
                    continue

                is_target = False
                for key_word in self.adder_keywords:
                    if key_word in mcomp:
                        is_target = True
                        break
                if key_cells.get(mname,None) is not None:
                    is_target = True

                if is_target:
                    print(mname)
                    # cell_name = mcell.lower()
                    cell_type = mcell.split('_')[0]
                    index = mcell.split('_')[1]
                    # if re.match('\d+',index) is not None:
                    #     cell_type = "{}_{}".format(index,cell_type)
                    # if 'RoundAnyRawFNToRecFN' in cell_type:
                    #     print(cell_type)
                    module_info = ModuleInfo(mcell, cell_type.lower(), mname.lower())
                    for word in mcell.split('_')[:-1]:
                        if re.match('\d+$', word) is not None:
                            module_info.index = int(word)
                            break
                    # item.show()
                    # print(mcell,mname,ports)
                    for p in ports:
                        port_info = self.parse_port_hier(ios, wires, p)
                        # if some arg of the cell's port is input/output of the father module, then when the father module is instanced latter,
                        # these args should be replaced with args of corresponding port of the father module instance
                        # eg, in the following example, i1 should be replaced with w1 for cell add_x_1
                        # eg, module ALU
                        #       input [63:0] i1,
                        #       ...
                        #       CSR_inc add_x_1 (.A(i1),...)
                        #       ...
                        #     endmodule
                        #     module Rocket
                        #       ...
                        #       ALU alu (.i1(w1),...)
                        # we mantain the information of args that need to update in 'args_to_update':
                        #               {father_module_name:{(cell_type,cell_name,portname):[args need to update]} }
                        #   eg, {'ALU':{(CSR_inc,add_x_1,'A'):[i1]}}
                        # if mcell == 'RoundAnyRawFNToRecFN_DW01_inc_J71_0' and mname=='add_x_1':
                        #     print(port_info.portname,port_info.arg_list,port_info.flag_update)
                        #     print(ios)
                        if port_info.flag_update:
                            args_to_update[module.name] = args_to_update.get(module.name, {})
                            port2update = (mcell, mname.lower(), port_info.portname)
                            args_to_update[module.name][port2update] = args_to_update[module.name].get(port2update, [])
                            for arg in port_info.args_need_update:
                                args_to_update[module.name][port2update].append(arg)
                            # print(args_to_update)
                        module_info.ports[port_info.portname] = port_info.arg_list
                    # print(args_to_update)
                    target_cells[module.name] = target_cells.get(module.name, [])
                    target_cells[module.name].append(module_info)

                if target_cells.get(mcell,None) is not None:
                    if args_to_update.get(mcell, None) is not None:
                        ports2update = args_to_update[mcell]
                        father_ports_info = {}
                        for p in ports:
                            father_ports_info[p.portname] = self.parse_port_hier(ios, wires, p)

                        # print(mcell,mname,father_ports_info.keys())
                        # instance.show()
                        for (child_cell_name, child_instance_name,
                             child_portname), child_args2update in ports2update.items():
                            # find the portargs (arglist2update) of the child cell that need to update :
                            # eg, child_cell_info = (cell_type='CSR_inc',instance_name='add_x_1', ports={'A':[i1_63,i1_62...i1_0],'S':[...]})
                            #     arglist2update = child_cell_info.ports['A'] = [arg1_63,arg1_62...arg1_0]

                            for cell_info in target_cells[mcell]:
                                if cell_info.cell_name == child_cell_name and child_instance_name in cell_info.instance_name :

                                    arglist2update = cell_info.ports[child_portname]
                                    # if mcell == 'CSRFile':
                                    #     print('#############################################')
                                    #     print(child_cell_name,cell_info.cell_name)
                                    #     print(child_instance_name,cell_info.instance_name)
                                    #     print('arglist to update',arglist2update)

                                    # for every arg of args2update that needs to update, replace it with new arg
                                    for argname in child_args2update:
                                        #print("------ arg to update:",argname)

                                        replace_port_info = father_ports_info[argname]
                                        replace_arg_list = replace_port_info.arg_list
                                        new_args = []
                                        # print('replace portname',replace_port_info.portname)
                                        # print('replace arg list',replace_arg_list)
                                        if replace_port_info.flag_update:
                                            args_to_update[module.name] = args_to_update.get(module.name,{})
                                            port2update = (child_cell_name, child_instance_name, child_portname)
                                            args_to_update[module.name][port2update] = args_to_update[module.name].get(
                                                port2update, [])
                                            for arg in replace_port_info.args_need_update:
                                                args_to_update[module.name][port2update].append(arg)
                                            # print("long link")
                                            # print(args_to_update[module.name])
                                        # replace the args of the child port with new args of the corresponding father port
                                        # print(arglist2update)
                                        for arg in arglist2update:
                                            if replace_port_info.portname in arg:
                                                # print(arg)
                                                index = arg.split('_')[-1]
                                                if re.match('\d+$', index) is not None:

                                                    new_args.append(
                                                        replace_arg_list[len(replace_arg_list) - 1 - int(index)])
                                                else:
                                                    new_args.append(replace_arg_list[0])
                                            else:
                                                new_args.append(arg)
                                        cell_info.ports[child_portname] = new_args
                                        arglist2update = new_args
                                    #     print('new arglist:',cell_info.ports[child_portname])
                                    # print('#############################################')
                                    # print(cell_info.cell_type,cell_info.instance_name,cell_info.ports)

                        args_to_update[mcell] = None

                    for module_info in target_cells[mcell]:
                        module_info.instance_name = "{}_{}".format(mname,module_info.instance_name)
                        target_cells[module.name] = target_cells.get(module.name, [])
                        target_cells[module.name].append(module_info)
                    target_cells[mcell] = None
                # if we encounter a father module instance as above mentioned, eg, ALU alu (.i1(w1),...)
                #   we first parse the ports of the father module instance,
                #   then we find the corresponding relationship between args of father instance and args of target_child cell ,and replace


            #print(module.name,args_to_update)
        # for module,cells in target_cells.items():
        #     print(module)
        #     if cells is not None:
        #         for cell in cells:
        #             print(cell.cell_name,cell.instance_name,cell.ports)
        # exit()
        # print(args_to_update[self.top_module])
        target_cells = target_cells[self.top_module]
        for cell in target_cells:
            print(cell.cell_name, cell.instance_name,cell.ports)
        # exit()
        return target_cells

    def parse_nohier(self, fname, key_cells,target_cells,label_region=False):
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
        index01 = [0,0]
        adder_inputs = set()
        adder_outputs = set()
        top_module = None
        adder_in_dict = collections.defaultdict(set)
        adder_out_dict = collections.defaultdict(set)
        positions = {}
        pi_positions = {}
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
            if 'add_x' in mcomp or 'alu_DP_OP' in mcomp:
                #print("\n",mcell,mname)
                adder_cells.add(mcell)
           # exit()
            key_inputs,key_outputs = [],[]
            for key_cell in key_cells.keys():
                if key_cell in mcomp:
                    key_inputs = key_cells[key_cell][0]
                    key_outputs = key_cells[key_cell][1]
                    break

            for p in ports:
                port_info = self.parse_port(mcomp, target_cells,p,index01,key_inputs,key_outputs)
                if port_info.ptype == "fanin":
                    fanins.append(port_info)
                elif port_info.ptype == "fanout":
                    fanouts.append(port_info)
                # else:
                #     assert port_info.ptype == "CLK"
                if port_info.is_adder_input:

                    adder_inputs.add(port_info.argname)
                    adder_in_dict[port_info.input_comp].add(port_info.argname)
                if port_info.is_adder_output:
                    adder_outputs.add(port_info.argname)
                    adder_out_dict[port_info.output_comp].add(port_info.argname)
                if positions.get(port_info.argname,None) is None:
                    positions[port_info.argname] = port_info.position
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
        #print(adder_inputs)
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
                n[1]["position"] = positions.get(n[0],None)

        print(adder_cells)
        return nodes, edges

    def parse(self,vfile_pair):
        hier_vf, vf = vfile_pair[0], vfile_pair[1]
        # if 'hybrid' not in vf:
        #     continue
        # parser = DcParser("BoomCore", ["alu_DP_OP", "add_x"])
        target_cells = self.parse_hier(hier_vf)

        nodes, edges = self.parse_nohier(vf, target_cells=target_cells)
        return nodes,edges
def main():
    report_folder = "./report"
    folder = "./implementation/"
    # folder = "../dc/boom/implementation/"
    total_nodes = 0
    total_edges = 0
    ntype = set()
    vfile_pairs = {}
    for v in os.listdir(folder):
        if not v.endswith('v') or '10' in v or 'auto' in v:
            continue
        if v.startswith('hier'):
            vname = v[5:-2]
            vfile_pairs[vname] = vfile_pairs.get(vname,[])
            vfile_pairs[vname].insert(0,v)
        else:
            vname = v[:-2]
            vfile_pairs[vname] = vfile_pairs.get(vname, [])
            vfile_pairs[vname].append(v)
    vfile_pairs = vfile_pairs.values()
    print(vfile_pairs)
    for vfile_pair in vfile_pairs:

        hier_vf,vf = vfile_pair[0],vfile_pair[1]
        hier_report = os.path.join(report_folder,hier_vf[:-1]+'rpt')

        # if 'hybrid' not in vf:
        #     continue
        hier_vf = os.path.join(folder, hier_vf)
        vf = os.path.join(folder, vf)
        print("parsing {}...".format(hier_vf))
        # parser = DcParser("BoomCore", ["alu_DP_OP", "add_x"])
        parser = DcParser("Rocket", hier_keywords=["add","inc"],adder_keywords=['add_x','alu_DP_OP','div_DP_OP'],hadd_type="xor")
        key_cells = parser.parse_report(hier_report)
        #exit()
        target_cells = parser.parse_hier(hier_vf,key_cells)

        nodes, edges = parser.parse_nohier(vf, key_cells=key_cells,target_cells=target_cells,label_region=True)
        print("nodes {}, edges {}".format(len(nodes), len(edges)))
        for n in nodes:
            ntype.add(n[1]["type"])
        total_nodes += len(nodes)
        total_edges += len(edges)
        #break
    print(ntype)
    print(total_nodes, total_edges)


if __name__ == "__main__":
    # dc_parser("../dc/simple_alu/implementation/alu_d0.20_r2_bounded_fanout_adder.v")
    main()
    # cProfile.run("main()")
