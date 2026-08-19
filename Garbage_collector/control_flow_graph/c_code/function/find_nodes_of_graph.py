import pygraphviz as pgv

# Load your existing graph (replace this with your actual graph loading code)
graph = pgv.AGraph("modified_node_subgraphs.dot")

# Iterate through nodes and convert each node into a subgraph
for node in graph.nodes():
    print(node," ")
    #subgraph = graph.add_subgraph(name=f"{node}")
    #subgraph.add_node(node, label=graph.get_node(node).attr["label"])
    #graph.delete_node(node)
for sub in graph.subgraphs():
    
    print(" ",sub.name)
    for sub_sub in sub.subgraphs():
        print(" ",sub_sub.name)
# Save the modified graph as a DOT file
graph.write("modified_graph.dot")
print("Modified graph saved as 'modified_graph.dot'")
