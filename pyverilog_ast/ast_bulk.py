import sys, os, json, glob
from optparse import OptionParser
from pyverilog.vparser.parser import parse
import graphviz

def node_to_dict(node):
    d = {"type": node.__class__.__name__}
    for attr in ("name","value","operator","var"):
        if hasattr(node, attr):
            v = getattr(node, attr)
            if isinstance(v, str):
                d["label"] = v; break
    kids = [node_to_dict(c) for c in node.children() if c is not None]
    if kids: d["children"] = kids
    return d

def count_nodes(d):
    return 1 + sum(count_nodes(c) for c in d.get("children", []))

def to_dot(d):
    g = graphviz.Digraph(format="png")
    g.attr("node", shape="box", fontsize="10", fontname="Helvetica")
    ctr=[0]
    def add(nd,parent=None):
        myid="n%d"%ctr[0]; ctr[0]+=1
        lbl=nd["type"]+(("\\n"+nd["label"]) if "label" in nd else "")
        g.node(myid,lbl)
        if parent is not None: g.edge(parent,myid)
        for c in nd.get("children",[]): add(c,myid)
    add(d)
    return g

op=OptionParser()
op.add_option("-i",dest="indir")
op.add_option("-o",dest="outdir",default="ast_dataset_output")
op.add_option("-n",dest="nimg",type="int",default=10)
(opts,args)=op.parse_args()
os.makedirs(opts.outdir,exist_ok=True)
dot_dir=os.path.join(opts.outdir,"dot"); json_dir=os.path.join(opts.outdir,"json"); img_dir=os.path.join(opts.outdir,"images")
for d in (dot_dir,json_dir,img_dir): os.makedirs(d,exist_ok=True)
log=open(os.path.join(opts.outdir,"results.csv"),"w"); log.write("file,status,nodes\n")
vfiles=sorted(glob.glob(os.path.join(opts.indir,"*.v")))
imgs_made=0; ok=0; fail=0
for vf in vfiles:
    name=os.path.splitext(os.path.basename(vf))[0]
    try:
        ast,directives=parse([vf])
        tree=node_to_dict(ast); n=count_nodes(tree)
        with open(os.path.join(json_dir,name+".json"),"w") as f: json.dump(tree,f)
        g=to_dot(tree)
        with open(os.path.join(dot_dir,name+".dot"),"w") as f: f.write(g.source)
        if imgs_made<opts.nimg:
            g.render(filename=os.path.join(img_dir,name),cleanup=True); imgs_made+=1
        log.write("%s,OK,%d\n"%(name,n)); ok+=1
        print("OK   %s (%d)"%(name,n))
    except Exception as e:
        log.write("%s,FAIL,0\n"%name); fail+=1
        print("FAIL %s"%name)
log.close()
print(""); print("Done. OK=%d FAIL=%d Images=%d (total files=%d)"%(ok,fail,imgs_made,len(vfiles)))
print("Output in:",opts.outdir)
