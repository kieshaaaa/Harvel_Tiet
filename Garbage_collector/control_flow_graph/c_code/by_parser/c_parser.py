import networkx as nx
import matplotlib.pyplot as plt
import pygraphviz as pgv
from pycparser import c_parser

def parse_c_code(code):
    parser = c_parser.CParser()
    ast = parser.parse(code)
    return ast

def create_graph_from_ast(ast):
    G = nx.DiGraph()

    def traverse(node):
        if isinstance(node, list):
            for item in node:
                traverse(item)
        elif hasattr(node, 'children'):
            for child in node.children():
                traverse(child)
            if hasattr(node, 'coord'):
                G.add_node(node.coord.line, label=str(node))

    traverse(ast)
    return G

# Example C code
c_code = """
int main() {
    int x = 5;
    printf("Hello, world! %d\\n", x);
    return 0;
}
"""

ast = parse_c_code(c_code)
graph = create_graph_from_ast(ast)

# Visualize the graph using pygraphviz and NetworkX
A = nx.nx_agraph.to_agraph(graph)
A.layout(prog='dot')  # Layout using 'dot' algorithm
A.draw('graph.png')    # Save the graph as PNG file
