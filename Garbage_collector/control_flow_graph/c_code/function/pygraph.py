import pygraphviz as pgv
import pandas as pd

def dot_to_tables(dot_file):
    # Read the DOT file and extract the graph structure
    graph = pgv.AGraph(dot_file)

    # Create an edge list
    edge_list = [(src, dst) for src, dst in graph.edges()]

    # Create a node feature table
    node_features = [{'node': node, 'label': graph.get_node(node).attr['label']} for node in graph.nodes()]

    return edge_list, node_features

def main():
    dot_file = 'broken_graph.dot'  # Replace with the path to your DOT file

    # Convert DOT to tables
    edge_list, node_features = dot_to_tables(dot_file)

    # Create Pandas DataFrames from the tables
    edge_list_df = pd.DataFrame(edge_list, columns=['source', 'target'])
    node_features_df = pd.DataFrame(node_features)

    # Save the DataFrames to CSV files
    edge_list_df.to_csv('edge_list_subnode.csv', index=False)
    node_features_df.to_csv('node_features_subnode.csv', index=False)

if __name__ == "__main__":
    main()
