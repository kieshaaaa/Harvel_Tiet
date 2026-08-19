# Install the pydot library using pip if you haven't already
# pip install pydot

import pydot

def parse_dot_file(dot_file_path):
    try:
        # Read the contents of the dot file
        with open(dot_file_path, 'r') as dot_file:
            dot_content = dot_file.read()

        # Parse the dot file using pydot
        graph = pydot.graph_from_dot_data(dot_content)

        print(graph[0]) # Get the first (and hopefully only) graph in the dot file
        if len(graph) > 0:
            graph = graph[0]

            # Now, you can work with the graph data
            # For example, you can get all nodes and edges
            nodes = graph.get_nodes()
            edges = graph.get_edges()


            print(edges) # Process the nodes and edges as needed
            # ...


    except FileNotFoundError:
        print("Dot file not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Example usage:
parse_dot_file('found.c.012t.cfg.dot')
