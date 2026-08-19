
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set arr_5_group [add_wave_group arr_5(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $arr_5_group]
set wdata_group [add_wave_group "Write Channel" -into $arr_5_group]
set ctrl_group [add_wave_group "Handshakes" -into $arr_5_group]
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_5_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set arr_4_group [add_wave_group arr_4(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $arr_4_group]
set wdata_group [add_wave_group "Write Channel" -into $arr_4_group]
set ctrl_group [add_wave_group "Handshakes" -into $arr_4_group]
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_4_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set arr_3_group [add_wave_group arr_3(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $arr_3_group]
set wdata_group [add_wave_group "Write Channel" -into $arr_3_group]
set ctrl_group [add_wave_group "Handshakes" -into $arr_3_group]
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_3_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set arr_2_group [add_wave_group arr_2(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $arr_2_group]
set wdata_group [add_wave_group "Write Channel" -into $arr_2_group]
set ctrl_group [add_wave_group "Handshakes" -into $arr_2_group]
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_2_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set arr_1_group [add_wave_group arr_1(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $arr_1_group]
set wdata_group [add_wave_group "Write Channel" -into $arr_1_group]
set ctrl_group [add_wave_group "Handshakes" -into $arr_1_group]
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set arr_0_group [add_wave_group arr_0(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $arr_0_group]
set wdata_group [add_wave_group "Write Channel" -into $arr_0_group]
set ctrl_group [add_wave_group "Handshakes" -into $arr_0_group]
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/m_axi_gmem_0_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group [add_wave_group arr_0__arr_1__arr_2__arr_3__arr_4__arr_5(axi_slave) -into $cinputgroup]
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_BRESP -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_BREADY -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_BVALID -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_RRESP -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_RDATA -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_RREADY -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_RVALID -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_ARREADY -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_ARVALID -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_ARADDR -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_WSTRB -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_WDATA -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_WREADY -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_WVALID -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_AWREADY -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_AWVALID -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/AESL_inst_processArray/s_axi_control_AWADDR -into $arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_processArray_top/AESL_inst_processArray/ap_start -into $blocksiggroup
add_wave /apatb_processArray_top/AESL_inst_processArray/ap_done -into $blocksiggroup
add_wave /apatb_processArray_top/AESL_inst_processArray/ap_idle -into $blocksiggroup
add_wave /apatb_processArray_top/AESL_inst_processArray/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_processArray_top/AESL_inst_processArray/ap_rst_n -into $resetgroup
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
add_wave /apatb_processArray_top/LENGTH_gmem_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_gmem_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_gmem_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_gmem_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_gmem_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_processArray_top/LENGTH_gmem_5 -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_arr_5_group [add_wave_group arr_5(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_arr_5_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_arr_5_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_arr_5_group]
add_wave /apatb_processArray_top/gmem_5_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_5_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_5_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_5_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_5_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_5_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_5_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_5_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_5_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_5_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_5_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_5_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_5_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_arr_4_group [add_wave_group arr_4(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_arr_4_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_arr_4_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_arr_4_group]
add_wave /apatb_processArray_top/gmem_4_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_4_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_4_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_4_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_4_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_4_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_4_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_4_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_4_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_4_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_4_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_4_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_4_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_arr_3_group [add_wave_group arr_3(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_arr_3_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_arr_3_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_arr_3_group]
add_wave /apatb_processArray_top/gmem_3_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_3_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_3_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_3_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_3_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_3_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_3_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_3_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_3_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_3_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_3_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_3_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_3_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_arr_2_group [add_wave_group arr_2(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_arr_2_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_arr_2_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_arr_2_group]
add_wave /apatb_processArray_top/gmem_2_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_2_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_2_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_2_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_2_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_2_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_2_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_2_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_2_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_2_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_2_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_2_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_2_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_arr_1_group [add_wave_group arr_1(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_arr_1_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_arr_1_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_arr_1_group]
add_wave /apatb_processArray_top/gmem_1_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_1_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_1_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_1_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_arr_0_group [add_wave_group arr_0(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_arr_0_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_arr_0_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_arr_0_group]
add_wave /apatb_processArray_top/gmem_0_BUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_BID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_BRESP -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_0_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_0_RRESP -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_RUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_RID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_0_RDATA -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_0_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_0_ARUSER -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_ARREGION -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_ARQOS -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_ARPROT -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_ARBURST -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_ARLEN -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_ARID -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_ARADDR -into $rdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_0_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_0_WUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_WID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_0_WSTRB -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_WDATA -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_0_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_0_AWUSER -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_AWREGION -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_AWQOS -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_AWPROT -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_AWBURST -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_AWLEN -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_AWID -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_AWADDR -into $wdata_group -radix hex
add_wave /apatb_processArray_top/gmem_0_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/gmem_0_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group [add_wave_group arr_0__arr_1__arr_2__arr_3__arr_4__arr_5(axi_slave) -into $tbcinputgroup]
add_wave /apatb_processArray_top/control_BRESP -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/control_BREADY -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/control_BVALID -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/control_RRESP -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/control_RDATA -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/control_RREADY -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/control_RVALID -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/control_ARREADY -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/control_ARVALID -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/control_ARADDR -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/control_WSTRB -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/control_WDATA -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
add_wave /apatb_processArray_top/control_WREADY -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/control_WVALID -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/control_AWREADY -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/control_AWVALID -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -color #ffff00 -radix hex
add_wave /apatb_processArray_top/control_AWADDR -into $tb_arr_0__arr_1__arr_2__arr_3__arr_4__arr_5_group -radix hex
save_wave_config processArray.wcfg
run all

