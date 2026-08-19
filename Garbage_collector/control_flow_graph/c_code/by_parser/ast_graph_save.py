import networkx as nx
import matplotlib.pyplot as plt
from pycparser import c_parser

# Parse C code and generate AST
code = "int main() { int a = 5; return a; }"
parser = c_parser.CParser()
ast = parser.parse(code)

# Create a directed graph
graph = nx.DiGraph()

def build_graph(node, parent=None):
    if parent is not None:
        graph.add_edge(parent, node)
    
    for child in node:
        if isinstance(child, tuple):
            build_graph(child, node)

build_graph(ast)

# Set up the figure and axes
plt.figure(figsize=(10, 6))
pos = nx.spring_layout(graph, seed=42)

# Draw the networkx graph
nx.draw_networkx(graph, pos, with_labels=True, font_weight='bold', node_size=500)

# Save the graph as a PNG image
plt.savefig("ast_graph.png")

# Display the plot
plt.show()
