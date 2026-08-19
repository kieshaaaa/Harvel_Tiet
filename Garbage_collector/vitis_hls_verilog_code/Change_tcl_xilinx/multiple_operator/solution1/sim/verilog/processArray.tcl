
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_processArray_top/AESL_inst_processArray/arr2_0_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr2_0 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_9_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_9 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_6_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_6 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_3_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_3 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_0_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_0 -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_processArray_top/AESL_inst_processArray/arr3_9 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr3_8 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr3_7 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr3_6 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr3_5 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr3_4 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr3_3 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr3_2 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr3_1 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr3_0 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr2_9 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr2_8 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr2_7 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr2_6 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr2_5 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr2_4 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr2_3 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr2_2 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr2_1 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_11 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_10 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_8 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_7 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_5 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_4 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_2 -into $return_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/arr_1 -into $return_group -radix hex
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
add_wave /apatb_processArray_top/LENGTH_arr2_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr2_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr2_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr2_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr2_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr2_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr2_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr2_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr2_8 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr2_9 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr3_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr3_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr3_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr3_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr3_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr3_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr3_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr3_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr3_8 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr3_9 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_10 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_11 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_8 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_arr_9 -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_processArray_top/arr2_0_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/arr2_0 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_9_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/arr_9 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_6_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/arr_6 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_3_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/arr_3 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_0_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/arr_0 -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcinputgroup]
add_wave /apatb_processArray_top/arr3_9 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr3_8 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr3_7 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr3_6 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr3_5 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr3_4 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr3_3 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr3_2 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr3_1 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr3_0 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr2_9 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr2_8 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr2_7 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr2_6 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr2_5 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr2_4 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr2_3 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr2_2 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr2_1 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_11 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_10 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_8 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_7 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_5 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_4 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_2 -into $tb_return_group -radix hex
add_wave /apatb_processArray_top/arr_1 -into $tb_return_group -radix hex
save_wave_config processArray.wcfg
run all

