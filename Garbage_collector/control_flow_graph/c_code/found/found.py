import pydot

def fetch_nodes_and_edges(dot_file):
    # Parse the dot file
    graph = pydot.graph_from_dot_file(dot_file)

    # Fetch nodes
    nodes = []
    for node in graph[0].get_nodes():
        nodes.append(node.get_name())

    # Fetch edge_list
    edge_list = []
    for edge in graph[0].get_edges():
        edge_list.append((edge.get_source(), edge.get_destination()))

    return nodes, edge_list

if __name__ == "__main__":
    dot_file = "found.c.012t.cfg.dot"  # Replace with the path to your dot file
    nodes, edge_list = fetch_nodes_and_edges(dot_file)

    # Print nodes
    print("Nodes:")
    print(nodes)

    # Print edge_list
    print("Edge List:")
    print(edge_list)
