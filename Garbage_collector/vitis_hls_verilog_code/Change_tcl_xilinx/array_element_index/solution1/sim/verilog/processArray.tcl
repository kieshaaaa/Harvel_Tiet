
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_processArray_top/AESL_inst_processArray/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinoutgroup]
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_5_o_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_5_o -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_5_i -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_4_o_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_4_o -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_4_i -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_3_o_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_3_o -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_3_i -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_2_o_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_2_o -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_2_i -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_1_o_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_1_o -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_1_i -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_0_o_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_0_o -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_0_i -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_processArray_top/AESL_inst_processArray/ap_start -into $blocksiggroup
add_wave /apatb_processArray_top/AESL_inst_processArray/ap_done -into $blocksiggroup
add_wave /apatb_processArray_top/AESL_inst_processArray/ap_idle -into $blocksiggroup
add_wave /apatb_processArray_top/AESL_inst_processArray/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
save_wave_config processArray.wcfg
run all

