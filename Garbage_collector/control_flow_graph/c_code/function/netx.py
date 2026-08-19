import pygraphviz as pgv
import networkx as nx
digraph = pgv.AGraph("function.c.012t.cfg.dot")
nx_graph = nx.DiGraph()
for node in digraph.nodes():
    nx_graph.add_node(node)

for edge in digraph.edges():
    source, target = edge
    nx_graph.add_edge(source, target)

import matplotlib.pyplot as plt

pos = nx.spring_layout(nx_graph)  # Position nodes
nx.draw(nx_graph, pos, with_labels=True, node_size=1000, font_size=8)
plt.show()

