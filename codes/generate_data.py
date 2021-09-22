import networkx as nx
from matplotlib import pyplot as plt
import random
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
# g.ndata['ntype'] = th.tensor([0,0,1,2,2,3,4,5])
id2type = {}
nodes = [(1,{'ntype':'PI'}),(2,{'ntype':'PI'}),(3,{'ntype':'AND'}),(4,{'ntype':'PI'}),(5,{'ntype':'PI'}),
         (6,{'ntype':'OR'}),(7,{'ntype':'XOR'}),(8,{'ntype':'PI'}),(9,{'ntype':'PI'}),(10,{'ntype':'XOR'}),
         (11,{'ntype':'NOR'})]
edges = [(1,3),(2,3),(4,6),(5,6),(3,7),(6,7),(8,10),(9,10),(7,11),(10,11)]
g = nx.DiGraph()
g.add_edges_from(edges)
g.add_nodes_from(nodes)
for n in nodes:
    id2type[n[0]]=n[1]['ntype']

print(id2type)
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

equal_replaces['AND'] = [
    # AND = NOR(INV,INV)
    Cell(
        nodes = {'o':(1,{'ntype':'NOR'}),
                 'i1':(2,{'ntype':'INV'}),'i2':(3,{'ntype':'INV'}),'i3':(4,{'ntype':'INV'}),'i4':(5,{'ntype':'INV'})},
        edges = [('i1','o'),('i2','o'),('i3','o'),('i4','o')],
        output_link= 'o',
        input_links= [['i1'],['i2'],['i3'],['i4']]
    ),
    # AND = INV(NAND)
    Cell(
        nodes = {'o':(1,{'ntype':'INV'}),
                 'i1':(2,{'ntype':'NAND'})},
        edges = [('i1','o')],
        output_link= 'o',
        input_links= [['i1'],['i1'],['i1'],['i1']]
    )
]

equal_replaces['NAND'] = [
    # # NAND = OR(INV,INV)
    # Cell(
    #     nodes = {'o':(1,{'ntype':'OR'}),
    #              'i1':(2,{'ntype':'INV'}),'i2':(3,{'ntype':'INV'})},
    #     edges = [('i1','o'),('i2','o')],
    #     output_link= 'o',
    #     input_links= [['i1'],['i2']]
    # ),
    # NAND = INV(AND)
    Cell(
        nodes = {'o':(1,{'ntype':'INV'}),
                 'i1':(2,{'ntype':'AND'})},
        edges = [('i1','o')],
        output_link= 'o',
        input_links= [['i1'],['i1'],['i1'],['i1']]
    )
]

equal_replaces['OR'] = [
    # OR = NAND(INV,INV)
    Cell(
        nodes = {'o':(1,{'ntype':'NAND'}),'i1':(2,{'ntype':'INV'}),
                 'i2':(3,{'ntype':'INV'}),'i3':(4,{'ntype':'INV'}),'i4':(5,{'ntype':'INV'})},
        edges = [('i1','o'),('i2','o'),('i3','o'),('i4','o')],
        output_link= 'o',
        input_links= [['i1'],['i2'],['i3'],['i4']],
    ),
    # OR = INV(NOR)
    Cell(
        nodes = {'o':(1,{'ntype':'INV'}),
                 'i1':(2,{'ntype':'NOR'})},
        edges = [('i1','o')],
        output_link= 'o',
        input_links= [['i1'],['i1'],['i1'],['i1']]
    ),

    # a+b = a +a'b
    # a+b+c =  a + a'(b+c)
    # a+b+c+d = a+a'(b+c+d)
    Cell(
        nodes = {'o':(1,{'ntype':'OR'}),
                 'w1':(2,{'ntype':'AND'}),
                 'i1':(2,{'ntype':'INV'}),
                 'i2':(2,{'ntype':'OR'})},
        edges = [('w1','o'),('i1','w1'),('i2','w1')],
        output_link= 'o',
        input_links= [['o','i1'],['i2','w1'],['i2'],['i2']]
    )
]

equal_replaces['NOR'] = [
    # # NOR = AND(INV,INV)
    # Cell(
    #     nodes = {'o':(1,{'ntype':'AND'}),
    #              'i1':(2,{'ntype':'INV'}),'i2':(3,{'ntype':'INV'})},
    #     edges = [('i1','o'),('i2','o')],
    #     output_link= 'o',
    #     input_links= [['i1'],['i2']]
    # ),
    # NOR = INV(OR)
    Cell(
        nodes = {'o':(1,{'ntype':'INV'}),
                 'i1':(2,{'ntype':'OR'})},
        edges = [('i1','o')],
        output_link= 'o',
        input_links= [['i1'],['i1'],['i1'],['i1']]
    )
]

equal_replaces['XOR'] = [
    # NOR(x1,x2) = OR( AND(x1,INV(x2)), AND(INV(x1),x2) )
    Cell(
        nodes = {'o':(1,{'ntype':'OR'}),
                 'w1':(2,{'ntype':'AND'}),'w2':(3,{'ntype':'AND'}),
                 'i1':(4,{'ntype':'INV'}),'i2':(5,{'ntype':'INV'})},
        edges = [('w1','o'),('w2','o'),('i1','w1'),('i2','w2')],
        output_link= 'o',
        input_links= [['w1','i2'],['i1','w2']]
    ),
    # XOR = INV(XNOR)
    Cell(
        nodes={'o': (1, {'ntype': 'INV'}),
               'i1': (2, {'ntype': 'XNOR'})},
        edges=[('i1', 'o')],
        output_link='o',
        input_links=[['i1'], ['i1']]
    )
]

equal_replaces['XNOR'] = [
    # XNOR = INV(XOR)
    Cell(
        nodes={'o': (1, {'ntype': 'INV'}),
               'i1': (2, {'ntype': 'XOR'})},
        edges=[('i1', 'o')],
        output_link='o',
        input_links=[['i1'], ['i1']]
    )
]

# MAJ(a,b,c) = ab+bc+ac
equal_replaces['MAJ'] = [
    # XNOR = INV(XOR)
    Cell(
        nodes={'o': (1, {'ntype': 'OR'}),
               'i1': (2, {'ntype': 'AND'}),'i2': (3, {'ntype': 'AND'}),'i3': (4, {'ntype': 'AND'})
               },
        edges=[('i1', 'o'),('i2', 'o'),('i3', 'o')],
        output_link='o',
        input_links=[['i1','i3'], ['i1','i2'],['i2','i3']]
    )
]

# a(b+c) = ab+ac

# and(and,and) = and
# or(or,or) =  or

def remove_adjacent_inv(g,n1,n2):
    sucs = g.successors(n2)
    pre =None
    for item in g.predecessors(n1):
        pre = item
    g.remove_node(n1)
    g.remove_node(n2)
    for suc in sucs:
        g.add_edge(pre, suc)

def random_replace(g,nid):
    rand_idx = random.randint(0, g.number_of_nodes() - 1)
    rand_nid = list(g.nodes.keys())[rand_idx]
    ntype = id2type[rand_nid]
    print('rand_nid', rand_nid,'ntype',ntype)
    if ntype == 'PI' or ntype == 'INV':
        return nid
    sucessors = g.successors(rand_nid)
    predecessors = list(g.predecessors(rand_nid))
    # print(list(predecessors_g))
    # predecessors = []
    # for pre in predecessors_g:
    #     predecessors.append(pre)
    num_fanin = len(predecessors)
    if ntype == 'XOR':
        num_fanin = 4

    replaces = equal_replaces[ntype]
    rand_index = random.randint(0, len(replaces) - 1)
    replace_cell = replaces[rand_index]
    nodes = replace_cell.nodes
    new_nodes = {}
    for i, (var, nd) in enumerate(nodes.items()):
        if i == num_fanin + 1:
            break
        new_nodes[var] = (nid, nd[1])
        nid += 1
    print(new_nodes)

    # replace the original gate with new gates
    g.remove_node(rand_nid)
    g.add_nodes_from(new_nodes.values())
    for node in new_nodes.values():
        id2type[node[0]] = node[1]['ntype']

    for edge in replace_cell.edges:
        if new_nodes.get(edge[0],None) is None or new_nodes.get(edge[1],None) is None:
            continue
        g.add_edge(new_nodes[edge[0]][0], new_nodes[edge[1]][0])

    # link PI/PO
    for sucessor in sucessors:
        g.add_edge(new_nodes[replace_cell.output_link][0], sucessor)
    for j, predecessor in enumerate(predecessors):
        for pi in replace_cell.input_links[j]:
            if new_nodes.get(pi,None) is not None:
                g.add_edge(predecessor, new_nodes[pi][0])
    print(rand_nid, ntype)

    # remove adjacent INVs
    if new_nodes[replace_cell.output_link][1]['ntype'] == 'INV':
        for sucessor in sucessors:
            if id2type[sucessor] == 'INV':
                print('remove:({},{})'.format(new_nodes[replace_cell.output_link][0], sucessor))
                remove_adjacent_inv(g, new_nodes[replace_cell.output_link][0], sucessor)
    for j, predecessor in enumerate(predecessors):
        if id2type[predecessor] == 'INV':
            pi = replace_cell.input_links[j][0]
            if new_nodes.get(pi,None) is not None and new_nodes[pi][1]['ntype'] == 'INV':
                print('remove:({},{})'.format(predecessor, new_nodes[pi][0]))
                remove_adjacent_inv(g, predecessor, new_nodes[pi][0])
    return nid

# and(and,and) = and
#
def simplify(g,n):
    if id2type[n] == 'OR':
        predecessors = list(g.predecessors(n))
        successors = list(g.successors(n))
        if len(predecessors)==2:
            pre1, pre2 = predecessors[0], predecessors[1]
            # b+b'=1
            if (id2type[pre1]=='INV' and list(g.predecessors(pre1))[0]== pre2) \
                or id2type[pre2]=='INV' and list(g.predecessors(pre2))[0]== pre1:
                g.remove_node(n)
                g.add_node((n,{'ntype':"1'b1"}))
                for suc in successors:
                    g.add_edge(n,suc)
            # a+1 = 1
            elif id2type[pre1] =="1'b1" or id2type[pre2]=="1'b1":
                g.remove_node(n)
                g.add_node((n,{'ntype':"1'b1"}))
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


num_nodes = g.number_of_nodes()
nid = num_nodes+1
for i in range(10):
    nid = random_replace(g,nid)

    #print(ntype,replace_cell.nodes,replace_cell.edges)
nx.draw_shell(g, with_labels=True, font_weight='bold')  # 节点按序排列
plt.show()
# nor xor nand and or inv xnor, mux ,maj

# 主要是要搞一个 xor 到 and, or的变换

# 给定一个网表，随机从中间选取节点，然后进行随机等价替换？

def is_xor(graph, root_node):
    pass

