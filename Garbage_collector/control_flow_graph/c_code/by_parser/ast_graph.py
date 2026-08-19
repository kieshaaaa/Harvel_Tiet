import networkx as nx
import matplotlib.pyplot as plt
from pycparser import c_parser, c_ast

# Parse C code and generate AST
code = "int main() { int a = 5; return a; }"
parser = c_parser.CParser()
ast = parser.parse(code)

# Create a directed graph (digraph)
graph = nx.DiGraph()

def build_graph(node, parent=None):
    # Create a node for the current AST element
    label = type(node).__name__
    graph.add_node(node, label=label)
    
    if parent is not None:
        # Add an edge from parent to current node
        graph.add_edge(parent, node)
    
    if isinstance(node, c_ast.Node):
        for child_name, child_node in node.children():
            # Recursively call with current node as parent
            build_graph(child_node, node)

# Start building the graph from the root of the AST
build_graph(ast)

# Set up the figure and axes
plt.figure(figsize=(10, 6))
pos = nx.spring_layout(graph, seed=42)

# Draw the networkx graph
nx.draw_networkx(graph, pos, labels=nx.get_node_attributes(graph, 'label'),
                 with_labels=True, font_weight='bold', node_size=500, node_shape='s', node_color='lightblue')

# Save the graph as a PNG image
plt.savefig("ast_digraph.png")

# Display the plot
plt.show()
