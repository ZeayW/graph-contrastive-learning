import networkx as nx
from matplotlib import pyplot as plt
nodes = [1,2,3,4,5,6,7]
edges = [(1,3),(2,3),(4,6),(5,6),(3,7),(6,7)]
g = nx.DiGraph()
g.add_edges_from(edges)
g.add_nodes_from(nodes)


for node in nodes:
    pres = []
    for pre in g.predecessors(node):
        pres.append(pre)
    print(node,pres)

nx.draw_shell(g, with_labels=True, font_weight='bold')  # 节点按序排列
plt.show()
# nor xor nand and or  inv xnor

# 主要是要搞一个 xor 到 and, or的变换



