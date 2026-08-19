############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project array_element_index
set_top processArray
add_files ../Array_main/Array/array_elements_index/array.c
add_files -tb ../Array_main/Array/array_elements_index/main.c
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
source "./array_element_index/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -trace_level port
export_design -format ip_catalog
