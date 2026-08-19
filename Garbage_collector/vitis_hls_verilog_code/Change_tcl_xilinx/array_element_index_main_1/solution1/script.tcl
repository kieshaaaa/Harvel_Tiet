############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project array_element_index_main_1
set_top processArray
add_files ../Array_main/Array/array_elements_index_main_1/array.c
add_files -tb ../Array_main/Array/array_elements_index_main_1/main.c
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
source "./array_element_index_main_1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -trace_level all
export_design -format ip_catalog
