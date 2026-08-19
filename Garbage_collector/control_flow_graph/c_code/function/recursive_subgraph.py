import pygraphviz as pgv

def subgraph_name_print(graph):
    for subgraph in graph.subgraphs():
        print(subgraph.name)
        if len(subgraph.subgraphs()) > 0:
            subgraph_name_print(subgraph)

# Load the graph from the DOT file
graph = pgv.AGraph("/home/parag/c_code/aes/aes/main.c.012t.cfg.dot")

# Call the function to print subgraph names recursively
subgraph_name_print(graph)
