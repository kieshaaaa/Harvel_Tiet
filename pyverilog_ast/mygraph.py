import sys
from optparse import OptionParser
from pyverilog.dataflow.dataflow_analyzer import VerilogDataflowAnalyzer
from pyverilog.dataflow.optimizer import VerilogDataflowOptimizer
from pyverilog.dataflow.graphgen import VerilogGraphGenerator

optparser = OptionParser()
optparser.add_option("-t", dest="topmodule", default="top")
optparser.add_option("-s", dest="signal")
optparser.add_option("-o", dest="outputfile", default="out.png")
(options, args) = optparser.parse_args()

filelist = args

analyzer = VerilogDataflowAnalyzer(filelist, options.topmodule)
analyzer.generate()

directives = analyzer.get_directives()
terms = analyzer.getTerms()
binddict = analyzer.getBinddict()

optimizer = VerilogDataflowOptimizer(terms, binddict)
optimizer.resolveConstant()
resolved_terms = optimizer.getResolvedTerms()
resolved_binddict = optimizer.getResolvedBinddict()
constlist = optimizer.getConstlist()

graphgen = VerilogGraphGenerator(options.topmodule, terms, binddict,
                                 resolved_terms, resolved_binddict, constlist,
                                 options.outputfile)

graphgen.generate(options.signal, walk=False)
graphgen.draw()
print("Graph written to", options.outputfile)
