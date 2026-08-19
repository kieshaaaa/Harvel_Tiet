import pygraphviz as pgv

# Load the DOT file
graph = pgv.AGraph("function.c.012t.cfg.dot")

def process_node_label(label,node):
    subnodes = label.split("\\l")

    return [f"{node}_subnode_{i}" for i in range(len(subnodes))]

def break_down_graph(graph):
    broken_graph = pgv.AGraph(directed=True)
    
    for subgraph in graph.subgraphs():
        broken_subgraph = broken_graph.add_subgraph(name=subgraph.name)

        for node in subgraph.nodes():
            original_label = subgraph.get_node(node).attr["label"]
            subnodes_labels = original_label.split("\\l")
            subnode_names = process_node_label(original_label,node)

            for subnode_name, subnode_label in zip(subnode_names, subnodes_labels):
                broken_subgraph.add_node(subnode_name, label=subnode_label)

            for i in range(len(subnode_names) - 1):
                broken_subgraph.add_edge(subnode_names[i], subnode_names[i + 1])

    return broken_graph

subnodes_labels =[]
broken_graph = break_down_graph(graph)

# Save or display the broken graph
broken_graph.draw("broken_graph.png", format="png", prog="dot")
