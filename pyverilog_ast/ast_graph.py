import sys
from optparse import OptionParser
from pyverilog.vparser.parser import parse
import graphviz

def label_for(node):
    name = node.__class__.__name__
    for attr in ('name','value','operator','var'):
        if hasattr(node, attr):
            v = getattr(node, attr)
            if isinstance(v, str):
                return name + "\\n" + v
    return name

op = OptionParser()
op.add_option('-o', dest='out', default='ast')
op.add_option('-d', dest='depth', type='int', default=0)
(opts, files) = op.parse_args()
ast, directives = parse(files)
g = graphviz.Digraph(format='png')
g.attr('node', shape='box', fontsize='10', fontname='Helvetica')
counter = [0]
maxd = opts.depth
def add(node, parent_id=None, depth=0):
    if maxd and depth > maxd: return
    my_id = 'n%d' % counter[0]
    counter[0] += 1
    g.node(my_id, label_for(node))
    if parent_id is not None: g.edge(parent_id, my_id)
    for child in node.children():
        if child is not None: add(child, my_id, depth+1)
add(ast)
outpath = g.render(filename=opts.out, cleanup=True)
print('AST graph written to:', outpath)
print('Total nodes drawn:', counter[0])
