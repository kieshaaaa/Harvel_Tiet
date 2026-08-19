import pygraphviz as pgv

# Load the DOT file
graph = pgv.AGraph("function.c.012t.cfg.dot")

def get_subgraph_contents(subgraph):
    contents = {}
    
    for node in subgraph.nodes():
        contents[node] = subgraph.get_node(node).attr["label"]
    
    return contents

def get_subgraphs(graph):
    subgraphs = []
    
    for subgraph in graph.subgraphs():
        subgraphs.append(subgraph)
    
    return subgraphs

subgraphs_list = get_subgraphs(graph)

for i, subgraph in enumerate(subgraphs_list):
    print(f"Subgraph {i + 1}: {subgraph.name}")
    subgraph_contents = get_subgraph_contents(subgraph)
    for node, content in subgraph_contents.items():
        print(f"    Node: {node}")
        print(f"    Content: {content}")
    print("=" * 20)
