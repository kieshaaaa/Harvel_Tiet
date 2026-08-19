import pygraphviz as pgv

# Load your existing graph (replace this with your actual graph loading code)
graph = pgv.AGraph("modified_node_subgraphs.dot")

# Create a list to store nodes that need to be deleted
nodes_to_delete = []

# Iterate through the nodes
for node in graph.nodes():
    nodes_to_delete.append(node)

# Delete the nodes from the graph
for node in nodes_to_delete:
    graph.delete_node(node)

# Save the modified graph without the deleted nodes
graph.write("modified_graph_delete_node.dot")
