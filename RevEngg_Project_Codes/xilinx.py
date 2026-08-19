from RevEngg import options
from RevEngg.C_to_V_Utilities import xilinx_script


def main(args):
    xilinx_script.verilog_generator(args)

def pre_main():
    parser = options.get_parser_xilinx()
    args = parser.parse_args()
    main(args)

if __name__ == "__main__":
    pre_main()
