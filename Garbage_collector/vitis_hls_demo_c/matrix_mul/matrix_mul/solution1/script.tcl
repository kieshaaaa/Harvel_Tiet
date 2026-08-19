############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrix_mul
set_top multiplyMatrix
add_files mat_mul.c
add_files -tb main.c
open_solution "solution1" -flow_target vitis
set_part {xcvu5p-flva2104-1-e}
create_clock -period 1 -name default
set_clock_uncertainty 0.5
#source "./matrix_mul/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
