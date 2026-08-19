import pygraphviz as pgv

# Load your existing graph (replace this with your actual graph loading code)
graph = pgv.AGraph("function.c.012t.cfg.dot")

# Traverse through nodes and convert them into subgraphs with subnodes
for subgraph in graph.subgraphs():
    if(len(graph.subgraphs())):
        print("yes1",len(graph.subgraphs()))
    else:
        print("no",len(graph.subgraphs()))
    for sub in subgraph.subgraphs():
        if(sub.subgraphs()):
            print("yes2",len(sub.subgraphs()))
        else:
            print("no",len(sub.subgraphs()))

        for sub_sub in sub.subgraphs():
            if(sub_sub.subgraphs()):
                print("yes3",len(sub_sub.subgraphs()))
            else:
                print("no",len(sub_sub.subgraphs()))


# Save the modified graph as a DOT file
