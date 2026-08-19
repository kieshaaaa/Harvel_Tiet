############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name multiplyMatrix "multiplyMatrix"
set_directive_array_partition -type complete -dim 1 "multiplyMatrix" mat1
set_directive_array_partition -type complete -dim 1 "multiplyMatrix" result
set_directive_unroll "multiplyMatrix/multiplyMatrix_label0"
set_directive_pipeline "multiplyMatrix/multiplyMatrix_label1"
