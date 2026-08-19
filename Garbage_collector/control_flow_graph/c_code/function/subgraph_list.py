import pygraphviz as pgv

# Load the DOT file
graph = pgv.AGraph("function.c.012t.cfg.dot")

def get_subgraphs(graph):
    subgraphs = []
    
    for subgraph in graph.subgraphs():
        subgraphs.append(subgraph)
    
    return subgraphs

subgraphs_list = get_subgraphs(graph)

for i, subgraph in enumerate(subgraphs_list):
    print(f"Subgraph {i + 1}: {subgraph.name}")  # Print the subgraph's name
    for node in subgraph.nodes():
        print(f"    Node: {node}")
    print("=" * 20)
