import sys, os, re, glob, json
from optparse import OptionParser
from pyverilog.dataflow.dataflow_analyzer import VerilogDataflowAnalyzer

BOILER = {"ap_clk","ap_rst","ap_rst_n","ap_start","ap_done","ap_idle",
          "ap_ready","ap_ce","ap_continue","ap_rst_reg"}

def short(name):
    return str(name).split(".")[-1]

def clean_tree(s):
    s = re.sub(r"\(Terminal [\w]+\.(\w+)\)", r"\1", s)
    s = re.sub(r"\(IntConst ([\w']+)\)", r"\1", s)
    s = s.replace("(Operator ", "").replace(")", "")
    return s.strip()

def find_top(f):
    txt = open(f, errors="ignore").read()
    m = re.search(r"\bmodule\s+(\w+)", txt)
    return m.group(1) if m else None

def summarize(f, top):
    a = VerilogDataflowAnalyzer([f], top); a.generate()
    terms = a.getTerms(); binddict = a.getBinddict()
    inputs, outputs = [], []
    for tk in terms:
        t = terms[tk]; nm = short(tk)
        if nm in BOILER: continue
        try:
            msb=int(str(t.msb.value)); lsb=int(str(t.lsb.value)); w=msb-lsb+1
        except Exception: w=1
        if "Input" in str(t.termtype): inputs.append((nm,w))
        elif "Output" in str(t.termtype): outputs.append((nm,w))
    clocked = any(short(tk) in ("ap_clk","clk") for tk in terms)
    drives={}
    for bk in binddict:
        nm=short(bk)
        for b in binddict[bk]:
            if b.tree is not None: drives[nm]=clean_tree(b.tree.tostr())
    lines=["clocked: %s"%("yes" if clocked else "no")]
    if inputs: lines.append("inputs: "+", ".join("%s (%d-bit)"%(n,w) for n,w in sorted(inputs)))
    for nm,w in sorted(outputs):
        if nm=="ap_return" or nm.endswith("_ap_vld"): continue
        expr=drives.get(nm,"?"); vld=drives.get(nm+"_ap_vld")
        lines.append("output %s = %s, written when (%s)"%(nm,expr,vld) if vld else "output %s = %s"%(nm,expr))
    if "ap_return" in drives: lines.append("return: %s"%drives["ap_return"])
    return "\n".join(lines), clocked

op=OptionParser()
op.add_option("-i",dest="indir")
op.add_option("-o",dest="outdir",default="summary_output")
(opts,args)=op.parse_args()
os.makedirs(opts.outdir,exist_ok=True)
sdir=os.path.join(opts.outdir,"summaries"); os.makedirs(sdir,exist_ok=True)
log=open(os.path.join(opts.outdir,"results.csv"),"w"); log.write("file,status,clocked,verilog_chars,summary_chars\n")
vfiles=sorted(glob.glob(os.path.join(opts.indir,"*.v")))
ok=fail=0
for vf in vfiles:
    name=os.path.splitext(os.path.basename(vf))[0]
    try:
        top=find_top(vf)
        s,clk=summarize(vf,top)
        open(os.path.join(sdir,name+".txt"),"w").write(s)
        vc=os.path.getsize(vf); sc=len(s)
        log.write("%s,OK,%s,%d,%d\n"%(name,clk,vc,sc)); ok+=1
        print("OK   %s"%name)
    except Exception as e:
        log.write("%s,FAIL,,0,0\n"%name); fail+=1
        print("FAIL %s"%name)
log.close()
print("")
print("Done. OK=%d FAIL=%d (total=%d)"%(ok,fail,len(vfiles)))
print("Summaries in:",sdir)
