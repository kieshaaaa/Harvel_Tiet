############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gcd1
set_top gcd
add_files gcd.c
add_files -tb main.c
open_solution "solution1" -flow_target vivado
set_part {xcvu5p-flva2104-1-e}
create_clock -period 10 -name default
#source "./gcd1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
