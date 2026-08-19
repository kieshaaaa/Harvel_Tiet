import pydot
import json

def parse_dot_file(dot_file_path):
    try:
        # Read the contents of the dot file
        with open(dot_file_path, 'r') as dot_file:
            dot_content = dot_file.read()

        # Parse the dot file using pydot
        graph = pydot.graph_from_dot_data(dot_content)

        # Get the first (and hopefully only) graph in the dot file
        if len(graph) > 0:
            graph = graph[0]

            print(len(graph)) # Extract information about nodes
            nodes_info = {}
            for node in graph.get_nodes():
                node_name = node.get_name()
                nodes_info[node_name] = {
                    'label': node.get_label(),
                    'shape': node.get_shape(),
                    # Add more attributes as needed
                }

            # Extract information about edges
            edges_info = []
            for edge in graph.get_edges():
                edge_info = {
                    'source': edge.get_source(),
                    'destination': edge.get_destination(),
                    'label': edge.get_label(),
                    # Add more attributes as needed
                }
                edges_info.append(edge_info)

            return nodes_info, edges_info

    except FileNotFoundError:
        print("Dot file not found.")
        return None, None
    except Exception as e:
        print(f"An error occurred: {e}")
        return None, None

# Example usage:
dot_file_path = 'found.c.012t.cfg'
nodes, edges = parse_dot_file(dot_file_path)

# Save the information into a JSON file
output_file = 'control_flow_graph_info.json'
with open(output_file, 'w') as json_file:
    json.dump({'nodes': nodes, 'edges': edges}, json_file, indent=2)

print(f"Graph information saved to {output_file}.")
