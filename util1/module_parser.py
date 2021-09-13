import os
import re
from typing import List, Dict, Tuple, Optional
class ModuleInfo:
    def __int__(self,module_name,instance=None):
        self.inputs = {}
        self.outputs = {}
        self.module_name = module_name
        self.instance = instance

def parse_modules(text):
    modules = text.split('endmodule')
    print(len(modules))
    module_list = []
    for module in modules:
        module = module.replace('\n', '').replace(';', ';\n')
        first_line = module.split('\n')[0]
        if first_line == '':
            continue
        module_name = first_line.split(' ')[1]
        moduleinfo = ModuleInfo(module_name)
        # print(module_name)
        lines = module.split('\n')[1:]
        for line in lines:
            line = line[2:]
            if line.startswith('input') or line.startswith('output'):
                parse_io(text,moduleinfo)
            else:
                break
        module_list.append(moduleinfo)
    return module_list
def parse(filename,key_words):
    nodes: Dict[str, Dict[str, str]] = {} # a list of (node, {"type": type})
    edges: List[
        Tuple[str, str, Dict[str, bool]]
    ] = []  # a list of (src, dst, {"is_reverted": is_reverted})
    with open(filename,'r') as f:
        lines = f.readlines()
    #text.replace(';',';\n')
    text = ''
    for l in lines:
        if ';' in l:
            text += l
        else:
            text += l[:-1]

    with open('temp.txt','w') as f:
        f.write(text)
    module_list = parse_modules(text)
    with open ('temp.txt','r') as f:
        lines = f.readlines()
        wires = {}
        for line in lines:
            if line.startswith(' '): line = line[2:]
            if line.startswith('wire'):
                parse_wire(line,wires)
            for key_word in key_words:
                if key_word in line:
                    module_name = line.split(' ')[0]
                    instance_name = line.split(' ')[1]

                    module = ModuleInfo(module_name)
                    port_list = text[str.find(text, '(') + 1:str.rfind(text, ')')].replace(' ', '').split(',')
                    ports = [p[str.find(p, '.') + 1:str.find(p, '(')] for p in port_list]
                    nets = [p[str.find(p, '(') + 1:str.find(p, ')')] for p in port_list]
                    outputs = []
                    inputs = []

                    for i in range(len(ports)):
                        if is_output_port(ports[i]):
                            outputs.append((ports[i], nets[i]))
                        else:
                            inputs.append(nets[i])
                            if nets[i] in ("1'b0", "1'b1"):
                                nodes[nets[i]] = {'type': nets[i]}
                    in_degree = len(ports) - len(outputs)
                    if in_degree == 1 or 'ADD' in cell_type:
                        cell_type = cell_type[:-1]

                    for port, net in outputs:
                        if cell_type == 'HADD':
                            if port == 'C1':
                                ntype = 'AND'
                            elif port == 'SO':
                                ntype = 'XOR'
                            else:
                                print(cell_type, port)
                                assert False
                        elif cell_type == 'FADD':
                            if port == 'CO':
                                ntype = 'MAJ'
                            elif port == 'S':
                                ntype = 'XOR'
                            else:
                                print(cell_type, port)
                                assert False
                        else:
                            ntype = cell_type

                        # nodes[net]['position'] = int(net[str.find(net,'[')+1:str.find(net,']')])
                        nodes[net]['type'] = ntype
                        nodes[net]['in_degree'] = in_degree

                    for in_net in inputs:
                        for _, out_net in outputs:
                            edges.append((in_net, out_net, {}))
            if line.startswith('module'):
                parse_name(line)
            elif 'input' in line or 'output' in line:
                parse_io(line,nodes)
            elif 'wire' in line or line.startswith(' '):
                parse_wire(line,nodes)

            elif line.startswith('end'):
                break
            elif line!='\n':
                parse_cell(line,nodes,edges)
        new_nodes = []
        for n in nodes.keys():
            new_nodes.append((n,nodes[n]))
    #exit()
    return new_nodes,edges


def is_output_port( port) :
    return port in ("Y", "S", "SO", "CO", "C1", "Q", "QN")




def parse_wire(text,wires):

    text = text[4:]
    if '[' in text:
        high_bit = int(text[text.find('[')+1:text.find(':')])
        low_bit = int(text[text.find(':') + 1:text.find(']')])
        wire_name = text.split('')[-1].split(';')[0]
        wires[wire_name] = (high_bit,low_bit)
    else:
        wire_list = text.replace(' ','').split(',')
        last = wire_list[-1].split(';')[0]
        wire_list = wire_list[:-1]
        if last != '\n':
            wire_list.append(last)
        for w in wire_list:
            wires[w] = (0,0)

def parse_net(text,index):
    net_list = []
    if '[' in text:
        net_name = text.split('[')[0]
        high_bit = text[text.find('[')+1:text.find(':')]
        high_bit = text[text.find('[') + 1:text.find(':')]
    elif "1'b" in text:
        idx = index[text]
        index[text] += 1
        return ['{}_{}'.format(text,idx)]
    else:
        high
def parse_nets(text,width):
    net_list = []
    if text.startswith('{'):
        text = text[str.find(text,'{')+1:str.find(text,'}')]
        nets = text.replace(' ','').split(',')
        for n in nets:
            if '[' in n:
                net_name = text.split('[')[0]

        net_list.reverse()
    else:
        net_name = text.split('[')[0]
        high_bit = int(text[str.find(text,'[')+1:str.find(text,':')])
        low_bit = int(text[str.find(text,':')+1:str.find(text,']')])
        for i in range(low_bit,high_bit+1):
            net_list.append("{}[{}]".format(net_name,i))
    return net_list
def parse_cell(text,module_list):
    module_name = text.split(' ')[0]
    instance_name = text.split(' ')[1]

    module = ModuleInfo(module_name,instance_name)

    port_list = text[str.find(text, '(') + 1:str.rfind(text, ')')].replace(' ', '').split(',')
    ports = [p[str.find(p, '.') + 1:str.find(p, '(')] for p in port_list]
    nets = [p[str.find(p, '(') + 1:str.find(p, ')')] for p in port_list]
    outputs = []
    inputs = []

    for i in range(len(ports)):
        if is_output_port(ports[i]):
            outputs.append((ports[i], nets[i]))
        else:
            inputs.append(nets[i])
            if nets[i] in ("1'b0", "1'b1"):
                nodes[nets[i]] = {'type': nets[i]}
    in_degree = len(ports) - len(outputs)
    if in_degree == 1 or 'ADD' in cell_type:
        cell_type = cell_type[:-1]

    for port, net in outputs:
        if cell_type == 'HADD':
            if port == 'C1':
                ntype = 'AND'
            elif port == 'SO':
                ntype = 'XOR'
            else:
                print(cell_type, port)
                assert False
        elif cell_type == 'FADD':
            if port == 'CO':
                ntype = 'MAJ'
            elif port == 'S':
                ntype = 'XOR'
            else:
                print(cell_type, port)
                assert False
        else:
            ntype = cell_type

        # nodes[net]['position'] = int(net[str.find(net,'[')+1:str.find(net,']')])
        nodes[net]['type'] = ntype
        nodes[net]['in_degree'] = in_degree

    for in_net in inputs:
        for _, out_net in outputs:
            edges.append((in_net, out_net, {}))
def parse_io(text,moduleinfo):
    words= text.split(' ')
    position = words[0]
    pin_name = words[-1].split(';')[0]

    width = 1
    #node_atrribute = {'type':'PI','is_input':True} if position=='input' else {'is_output':True}
    if len(words) == 3:
        high_bit =int(words[1][str.find(words[1],'[')+1:str.find(words[1],':')])
        low_bit =int(words[1][str.find(words[1],':')+1:str.find(words[1],']')])
        width = high_bit-low_bit+1

    if position == 'input':
        moduleinfo.inputs[pin_name] = (width,[])
    elif position =='output':
        moduleinfo.outputs[pin_name] = (width,[])
    else:
        print('not io')
        assert False

def parse_name(text):
    module_name = text.split(' ')[1]
    #print(str.find(text,'('),str.find(text,')'))
    pins = text[str.find(text,'(')+1:str.find(text,')')].replace(' ','').split(',')
    #rint(module_name,pins)
def main():
    filename = '../dc/sub/multiplexer8_d0.00_hybrid_adder.v'
    nodes,edges = parse(filename)
    print(len(nodes), nodes)
    print(len(edges), edges)
if __name__ == "__main__":
    main()