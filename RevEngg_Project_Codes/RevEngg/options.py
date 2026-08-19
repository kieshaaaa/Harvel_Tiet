import argparse

def get_parser_xilinx():
    parser = argparse.ArgumentParser(description="Generate and execute script.tcl for Vitis HLS")
    add_args_xilinx(parser)
    return parser

def add_args_xilinx(parser):
    parser.add_argument("-input_file", required=True, help="Path to the input .c files")
    parser.add_argument("-output_folder", required=True, help="folder path to store verilog file")
    parser.add_argument("-project", required=True, help="Project name")
    parser.add_argument("-top", required=True, help="Top function name")
    return parser 

def get_parser_preprocess_c():
    parser = argparse.ArgumentParser(description="preprocess C")
    add_args_preprocess_c(parser)
    return parser


def add_args_preprocess_c(parser):
    parser.add_argument('-input_folder', '-in_f', dest='input_folder', required=True, help="Path to the folder contain the .c files")
    parser.add_argument('-output_folder', '-out_f', dest='output_folder', default=None, help="Path to the output folder")
    parser.add_argument("-db", "--option_db", action="store_true", help="Use -db if you want only database")
    return parser


def get_parser_preprocess_v():
    parser = argparse.ArgumentParser(description="preprocess Verilog")
    add_args_preprocess_v(parser)
    return parser

def add_args_preprocess_v(parser):
    parser.add_argument("-input_folder", required=True, help="Path to the folder contain the .v files")
    parser.add_argument("-output_folder", required=None, help="Path to the output folder")
    return parser
