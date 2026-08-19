############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrix_mul
set_top multiplyMatrix
add_files mat_mul.c
add_files -tb main.c -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution3" -flow_target vitis
set_part {xcvu5p-flva2104-1-e}
create_clock -period 5 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
set_clock_uncertainty 0.5
source "./matrix_mul/solution3/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
