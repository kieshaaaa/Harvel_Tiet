import pygraphviz as pgv

# Load your existing graph (replace this with your actual graph loading code)
graph = pgv.AGraph("broken_graph.dot")

# Create a new graph to store the modified graph
#new_graph = pgv.AGraph(strict=True, directed=True)

# Traverse through nodes and add edges as needed
for subgraph in graph.subgraphs():
    for node in subgraph.nodes():
        label = subgraph.get_node(node).attr["label"]
        
        if "goto" in label:
            target_label = label.split("\\")[-3]
            print(target_label)
            print()
            for other_subgraph in graph.subgraphs():
                for other_node in other_subgraph.nodes():
                    other_label = other_subgraph.get_node(other_node).attr["label"]
                    
                    if "<bb\\" in other_label:
                        target_other_label=other_label.split("\\")[-2]
                        if(target_label == target_other_label):
                             print("parag")
                             graph.add_edge(other_node,node)

# Save the modified graph as a DOT file
new_graph.write("modified_graph.dot")
print("Modified graph saved as 'modified_graph.dot'")
