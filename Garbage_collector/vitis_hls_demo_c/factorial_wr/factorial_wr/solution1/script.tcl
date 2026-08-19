############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project factorial_wr
set_top factorial
add_files factorial.c
add_files -tb main.c
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./factorial_wr/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
