import pygraphviz as pgv

# Load your existing graph (replace this with your actual graph loading code)
graph = pgv.AGraph("function.c.012t.cfg.dot")

# Traverse through nodes and convert them into subgraphs with subnodes
for subgraph in graph.subgraphs():
    for node in subgraph.nodes():
        label = subgraph.get_node(node).attr["label"]
        
        # Create a subgraph for the current node
        node_name = node
        new_subgraph = subgraph.add_subgraph(name=node_name, label=label)
        # Remove the original node
        subgraph.remove_node(node)
    if(len(graph.subgraphs())):
        print("yes",len(graph.subgraphs()))
    else:
        print("no")
    for sub in subgraph.subgraphs():
        if(graph.subgraphs()):
            print("yes")
        else:
            print("no")

        #for node in sub.nodes():
            #label = sub.get_node(node).attr["label"]
        
            # Create a subgraph for the current node
            #node_name = node
            #new_subgraph = sub.add_subgraph(name=node_name, label=label)
        
            # Remove the original node
            #sub.remove_node(node)

# Save the modified graph as a DOT file
graph.write("modified_node_subgraphs.dot")
print("Modified graph with subgraphs saved as 'modified_graph_subgraphs.dot'")
