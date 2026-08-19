############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gcd1
set_top gcd
add_files gcd.c
add_files -tb main.c
open_solution "solution2" -flow_target vitis
set_part {xcvu5p-flva2104-1-e}
create_clock -period 10 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
source "./gcd1/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
