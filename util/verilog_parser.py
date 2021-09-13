import os
import re
from typing import List, Dict, Tuple, Optional

def parse(filename):
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

    with open ('temp.txt','r') as f:
        lines = f.readlines()
        wires = []
        for line in lines:
            if line.startswith(' '): line = line[2:]
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

def parse_cell(text,nodes,edges):

    cell_type = text.split(' ')[0]
    if cell_type == 'assign':
        nodes[text.split(' ')[1]] = {'type':'IBUFF'}
        return
    cell_type = cell_type[0:re.search('\d',cell_type).span()[0]]

    port_list = text[str.find(text,'(')+1:str.rfind(text,')')].replace(' ','').split(',')
    ports = [p[ str.find(p,'.')+1:str.find(p,'(') ] for p in port_list]
    nets = [p[ str.find(p,'(')+1:str.find(p,')') ] for p in port_list]
    outputs = []
    inputs = []

    for i in range(len(ports)):
        if is_output_port(ports[i]):
            outputs.append((ports[i],nets[i]))
        else:
            inputs.append(nets[i])
            if nets[i] in ("1'b0","1'b1"):
                nodes[nets[i]] = {'type':nets[i]}
    in_degree = len(ports) - len(outputs)
    if in_degree == 1 or 'ADD' in cell_type:
        cell_type = cell_type[:-1]

    for port,net in outputs:
        if cell_type == 'HADD':
            if port == 'C1':
                ntype = 'AND'
            elif port == 'SO':
                ntype = 'XOR'
            else:
                print(cell_type,port)
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

        #nodes[net]['position'] = int(net[str.find(net,'[')+1:str.find(net,']')])
        nodes[net]['type'] = ntype
        nodes[net]['in_degree'] = in_degree

    for in_net in inputs:
        for _,out_net in outputs:
            edges.append((in_net,out_net,{}))

def parse_wire(text,nodes):
    if text.startswith('wire'):
        text = text[4:]
    wires = text.replace(' ','').split(',')
    last = wires[-1].split(';')[0]
    wires = wires[:-1]
    if last != '\n':
        wires.append(last)
    for w in wires:
        nodes[w] ={'type':'const'}
def parse_io(text,nodes):
    words= text.split(' ')
    position = words[0]
    pin_name = words[-1].split(';')[0]

    length = 1
    #node_atrribute = {'type':'PI','is_input':True} if position=='input' else {'is_output':True}
    if len(words) == 3:
        high_bit =int(words[1][str.find(words[1],'[')+1:str.find(words[1],':')])
        low_bit =int(words[1][str.find(words[1],':')+1:str.find(words[1],']')])
        length = high_bit-low_bit+1
        for i in range(length):
            pin_name_i = '{}[{}]'.format(pin_name,i)
            nodes[pin_name_i] = {}
            nodes[pin_name_i]['position'] = i
            if position == 'input':
                nodes[pin_name_i]['type']= 'PI'
                nodes[pin_name_i]['is_input'] = True
            else:
                nodes[pin_name_i]['is_output'] = True
    else:
        nodes[pin_name] = {}
        nodes[pin_name]['position'] = 0
        if position == 'input':
            nodes[pin_name]['type'] = 'PI'
            nodes[pin_name]['is_input'] = True
        else:
            nodes[pin_name]['is_output'] = True
def parse_name(text):
    module_name = text.split(' ')[1]
    #print(str.find(text,'('),str.find(text,')'))
    pins = text[str.find(text,'(')+1:str.find(text,')')].replace(' ','').split(',')
    #rint(module_name,pins)
def main():
    filename = '../dc/adder32/alu/alu_adder.v'
    nodes,edges = parse(filename)
    print(len(nodes), nodes)
    print(len(edges), edges)
if __name__ == "__main__":
    main()