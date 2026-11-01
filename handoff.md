# HARVELL — Handoff for Qwen Accuracy Test

## Goal of this task
Download a Qwen model (code-focused variant) and **test its accuracy at translating our
Pyverilog-derived input back into the original C code.** For each program we have a
(Verilog-derived input, original C) pair; feed the input to Qwen, get its predicted C,
and measure how similar the prediction is to the actual C. Report accuracy across the dataset.

This is for a research project (HARVELL) that reverse-compiles Vitis-HLS-generated
Verilog back to C. The professor specifically asked to: download the Qwen model, feed it
the Pyverilog input, and measure similarity of the output to the real C.

---

## Background (what has already been done)

We used **Pyverilog** to turn the Verilog dataset into two structural representations.
Both already exist as output on disk (see paths below):

1. **AST** — the full syntactic tree of each Verilog design, exported as JSON and DOT.
   Boilerplate (HLS handshake signals: ap_start, ap_done, ap_idle, ap_ready, ap_clk,
   ap_rst, etc.) is **kept** (nothing removed). Complete but large.
2. **Pyverilog summary** — a compact, behavioral text description per design produced
   with Pyverilog's **dataflow analyzer**: inputs with bit-widths, the expression driving
   each output, the condition each output is written under, and the return value, with
   HLS boilerplate stripped. Lossy but small. (This is a **baseline** version — see
   "Known limitations" below; it has rough edges on complex clocked designs.)

The **summary** is the more promising model input (compact, behavioral, close to C).
The AST is the alternative for structure-aware models (GNNs), not relevant to Qwen.
**For this Qwen test, use the SUMMARY as the model input** (Qwen is a sequence model;
the summary is the compact text form it can consume). The AST is NOT the right input here.

### Key design decisions already made
- **Input representation = Pyverilog summary**, not raw Verilog (too long; hits context
  limits) and not raw AST (large, noisy, graph-shaped).
- **Model = Qwen code variant** (team already uses Qwen; the repo has
  `qwen_summary_improved.csv` from earlier Qwen work; Qwen2.5-Coder is the expected family).
- **Evaluation = similarity of predicted C vs actual C.** Project already uses WER and
  BLEU (sacrebleu) for text match, plus LLM-based semantic similarity (the
  `CodeSummary_and_SimilarityGemini.ipynb` notebook). Reuse these where possible.

---

## Dataset & file paths (on the user's Mac, repo cloned locally)

Repo root: `~/Harvel_Tiet/` (GitHub: kieshaaaa/Harvel_Tiet; upstream subhrendu1987/HarVel_Tiet)

- **Verilog dataset (flat, 1,379 `.v` files, one per program):**
  `~/Harvel_Tiet/RevEngg_Project_Data/dataset_verilog/`
- **Matching C code** — needs confirming which folder is canonical. Candidates:
  - `~/Harvel_Tiet/RevEngg_Project_Data/dataset_c_codes_clang_format/`
  - `~/Harvel_Tiet/RevEngg_Project_Data/Consolidated_data_final/` (has `.src`/`.tgt`)
  - **TODO: match C to each program by id/filename; inspect and confirm the folder.**
- **Pyverilog summaries (already generated, or to regenerate):**
  `~/Desktop/summary_output/summaries/<name>.txt` (one summary per design)
  Generator script: `~/Harvel_Tiet/pyverilog_ast/pv_summary_bulk.py`
- **AST output (already generated — NOT the input for this task):**
  `~/Desktop/ast_dataset_output/` (`json/`, `dot/`, `images/`, `results.csv`)
- **Scripts committed to repo:** `~/Harvel_Tiet/pyverilog_ast/`
  (`ast_bulk.py`, `ast_graph.py`, `mygraph.py`, `pv_summary_bulk.py`, `README.md`)

### Existing summary format (the model INPUT)
Example of one summary (combinational case, clean):
```
clocked: no
inputs: num (32-bit)
output temptemp1 = num, written when (num[0] == 1)
return: 0
```
Note on preprocessing conventions in the C: `main()` was renamed `entry_point()`;
scanf vars became input pointer args; printf values became output pointer args named
`temptemp1, temptemp2, ...`; comments removed. So predicted C should be judged against
this preprocessed C, not pristine original C.

---

## Current progress (completed)
- [x] Pyverilog installed and working (Icarus Verilog + Graphviz + pygraphviz on Mac).
- [x] AST extraction over full dataset: **1,321 / 1,379 parsed (96%)**, 58 failed
      (unsupported Verilog constructs). JSON + DOT + 10 example PNGs + results.csv.
- [x] Baseline Pyverilog summary generator built (`pv_summary_bulk.py`), using the
      dataflow analyzer. Produces per-design text summaries + a results.csv that also
      records verilog_chars vs summary_chars (compression ratio).
- [x] Scripts + README pushed to GitHub under `pyverilog_ast/`.

## Remaining tasks (what Claude Code should do)
1. **Confirm the C dataset folder** and build a reliable id → (summary, c_code) mapping.
   Report which folder was used and how many programs have a matching C file.
2. **Decide/confirm the exact Qwen model.** Default to **Qwen2.5-Coder-7B-Instruct**
   (or a smaller 1.5B/3B variant if hardware is limited — the user is on a MacBook Air,
   so a small model or an API may be necessary; flag this). Confirm with the user before
   downloading several GB.
3. **Download the model** (Hugging Face `transformers`, or Ollama for Mac convenience,
   or an API if local is infeasible). Note the MacBook Air constraint — a 7B model may be
   slow/too large locally; propose Ollama with a quantized Qwen2.5-Coder, or an API.
4. **Build the inference script:** for each program, construct a prompt that gives Qwen
   the Pyverilog summary and asks it to produce the equivalent C (describe the
   preprocessing conventions in the prompt so it targets the right C style). Collect the
   predicted C.
5. **Evaluate similarity** of predicted C vs actual C:
   - BLEU via `sacrebleu`, and/or WER (consistent with the project's existing metrics).
   - Optionally semantic similarity (embedding or LLM-based), mirroring the existing
     `CodeSummary_and_SimilarityGemini.ipynb` approach.
   - Produce a results table/CSV (per-program scores) and overall averages.
6. **Report**: total programs, how many had matching C, average similarity score(s),
   and a few example (summary → predicted C vs actual C) side-by-sides for eyeballing.

## Known limitations / edge cases to handle
- **Summary generator is a baseline.** On complex clocked designs it: lists some ports
  twice (sub-module signals leak in), fails to strip bare `clk`/`ce`/`reset`/`din`
  boilerplate (only `ap_*` names are filtered), and leaves raw Pyverilog tree syntax in
  expressions/conditions (e.g. `(Branch Cond:... Next:Eq ...)`) instead of clean logic.
  Consider improving the summarizer (dedupe ports, widen boilerplate filter, clean the
  branch/FSM expressions) OR note that noisy summaries may hurt Qwen accuracy.
- **58 Verilog files fail Pyverilog parsing** — they will have no summary; skip them.
- **C matching** may be imperfect (filename/id mismatches, missing C). Count and log
  these; never crash the whole run on one missing pair.
- **MacBook Air hardware**: a full 7B model locally may be impractical. Be ready to fall
  back to a quantized model (Ollama) or an API, and say so.
- Be **robust**: wrap each program in try/except, log failures with the error, keep going.
- Be **deterministic** where possible (fixed seed / temperature 0 for generation).
- **Do NOT modify repo files**; write outputs to a separate folder (e.g.
  `~/Desktop/qwen_eval_output/`). Do NOT git commit/push without being asked.

## Suggested deliverables
- `qwen_eval.py` (or a notebook) that runs the whole pipeline.
- `qwen_eval_output/predictions/` (predicted C per program), `results.csv` (per-program
  BLEU/WER/similarity), and a short printed summary with averages + 3 worked examples.

## First step for Claude Code
Start by **inspecting the repo** to confirm the C-code folder and the summaries, print one
(summary, actual C) pair, and propose the exact Qwen model + run approach (local vs
Ollama vs API) given the MacBook Air — **before** downloading multi-GB weights or running
on all 1,379.
