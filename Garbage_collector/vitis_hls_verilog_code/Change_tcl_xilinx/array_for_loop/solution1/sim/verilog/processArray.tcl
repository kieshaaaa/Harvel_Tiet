
log_wave -r /
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
add_wave /apatb_processArray_top/AESL_inst_processArray/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_processArray_top/AESL_inst_processArray/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_processArray_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_processArray_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_processArray_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_5 -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcinoutgroup]
add_wave /apatb_processArray_top/arr_5_o_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/arr_5_o -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_5_i -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_4_o_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/arr_4_o -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_4_i -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_3_o_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/arr_3_o -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_3_i -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_2_o_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/arr_2_o -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_2_i -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_1_o_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/arr_1_o -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_1_i -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_0_o_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/arr_0_o -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_0_i -into $tb_return_group -radix hex
save_wave_config processArray.wcfg
run all

