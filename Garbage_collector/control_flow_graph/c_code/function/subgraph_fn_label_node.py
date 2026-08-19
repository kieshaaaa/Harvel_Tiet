import pygraphviz as pgv

# Load the DOT file
graph = pgv.AGraph("function.c.012t.cfg.dot")

def process_node_label(label, node):
    subnodes = label.split("\\l")
    return [f"{node}_subnode_{i}" for i in range(len(subnodes))]

