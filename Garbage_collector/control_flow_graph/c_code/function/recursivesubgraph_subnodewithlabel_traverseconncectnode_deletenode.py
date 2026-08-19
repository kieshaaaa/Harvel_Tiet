import pygraphviz as pgv

def subgraph_name_print(graph):
    for subgraph in graph.subgraphs():
        print(subgraph.name)
        # call the function to  break down the node into the line  
        break_down_graph(subgraph)
        if len(subgraph.subgraphs()) > 0:
            subgraph_name_print(subgraph)

    return graph



def process_node_label(label, node):
    subnodes = label.split("\\l")
    return [f"{node}_subnode_{i}" for i in range(len(subnodes))]

def break_down_graph(subgraph):
    

    for node in subgraph.nodes():
        original_label = subgraph.get_node(node).attr["label"]
        subnodes_labels = original_label.split("\\l")
        subnode_names = process_node_label(original_label, node)

        for subnode_name, subnode_label in zip(subnode_names, subnodes_labels):
            subgraph.add_node(subnode_name, label=subnode_label)

        for i in range(len(subnode_names) - 1):
            subgraph.add_edge(subnode_names[i], subnode_names[i + 1])
    
   
    sub_graph1 = subgraph.name
    for node in subgraph.nodes():
        label = subgraph.get_node(node).attr["label"]
 
        if "goto" in label:
            target_label = label.split("\\")[-3]
            print()
           
            for other_node in subgraph.nodes():
                other_label = subgraph.get_node(other_node).attr["label"]
 
                if "<bb\\" in other_label:
                    target_other_label=other_label.split("\\")[-2]
                    if(target_label == target_other_label):
                        subgraph.add_edge(node,other_node)


def remove_nodes_without_subnode(graph):
    nodes_to_remove = []
    for node in graph.nodes():
        if "subnode" not in node:
            nodes_to_remove.append(node)
    
    for node in nodes_to_remove:
        graph.delete_node(node)


    return graph


subnodes_labels = []

# Load the DOT file
graph = pgv.AGraph("function.c.012t.cfg.dot")

# Call the function to print subgraph names recursively
broken_graph = subgraph_name_print(graph)

# Call the function to remove nodes without "subnode" in their name
broken_graph_node = remove_nodes_without_subnode(broken_graph)

# Save or display the broken graph
broken_graph_node.draw("broken_graph_original_edit.png", format="png", prog="dot")

# Save the broken graph as a DOT file
broken_graph_node.write("broken_graph_original_edit.dot")

print("Broken graph saved as 'broken_graph_original_edit.dot'")



