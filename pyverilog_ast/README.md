# Pyverilog AST and Summary Extraction

Scripts for extracting structural representations from the project's Verilog
dataset using Pyverilog, as part of HARVELL (reverse-compiling Verilog to C).

## Scripts
- ast_bulk.py: parses every Verilog file in a folder, exports each AST as JSON
  and DOT, renders first N as PNG images, writes results.csv (status + node count).
- ast_graph.py: AST graph (PNG) for a single Verilog file.
- mygraph.py: Pyverilog dataflow graph for a chosen signal in a single file.
- pv_summary_bulk.py: dataflow-based text summary per design (inputs, output
  expressions, write conditions, return), with HLS boilerplate stripped.

## Usage
AST extraction:   python3 ast_bulk.py -i <verilog_folder> -o <output_folder> -n 10
Summary:          python3 pv_summary_bulk.py -i <verilog_folder> -o <output_folder>

## Requirements
Python 3.9+, Pyverilog, Icarus Verilog (iverilog), Graphviz (dot).
Install: pip3 install pyverilog jinja2 ply graphviz

## Results (dataset_verilog, 1379 files)
AST extraction: 1321/1379 parsed (96 percent); 58 failed (unsupported constructs).
Each parsed file exported as JSON + DOT; 10 rendered as example graphs.
Large output data (JSON/DOT/images) kept separately due to size.

## Notes
The AST is the complete structural tree (boilerplate included). The summary is a
compact behavioral description (boilerplate removed). ASTs suit structure-aware
models (GNNs); summaries suit sequence models.
