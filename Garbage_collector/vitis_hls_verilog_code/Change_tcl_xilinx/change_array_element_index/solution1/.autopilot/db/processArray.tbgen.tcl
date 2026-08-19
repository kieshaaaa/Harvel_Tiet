set moduleName processArray
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {processArray}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_0 int 32 regular {axi_master 2}  }
	{ gmem_1 int 32 regular {axi_master 2}  }
	{ gmem_2 int 32 regular {axi_master 2}  }
	{ gmem_3 int 32 regular {axi_master 2}  }
	{ gmem_4 int 32 regular {axi_master 2}  }
	{ gmem_5 int 32 regular {axi_master 2}  }
	{ arr_0 int 64 regular {axi_slave 0}  }
	{ arr_1 int 64 regular {axi_slave 0}  }
	{ arr_2 int 64 regular {axi_slave 0}  }
	{ arr_3 int 64 regular {axi_slave 0}  }
	{ arr_4 int 64 regular {axi_slave 0}  }
	{ arr_5 int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "arr_0","offset": { "type": "dynamic","port_name": "arr_0","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "gmem_1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "arr_1","offset": { "type": "dynamic","port_name": "arr_1","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "gmem_2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "arr_2","offset": { "type": "dynamic","port_name": "arr_2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "gmem_3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "arr_3","offset": { "type": "dynamic","port_name": "arr_3","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "gmem_4", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "arr_4","offset": { "type": "dynamic","port_name": "arr_4","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "gmem_5", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "arr_5","offset": { "type": "dynamic","port_name": "arr_5","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "arr_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "arr_1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "arr_2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "arr_3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "arr_4", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "arr_5", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} ]}
# RTL Port declarations: 
set portNum 293
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem_1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem_2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_3_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem_3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_4_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem_4_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem_4_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_4_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_4_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem_4_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem_4_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem_4_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_4_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_4_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_gmem_4_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_5_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem_5_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem_5_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_5_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_5_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_gmem_5_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem_5_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem_5_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_5_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_5_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_gmem_5_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_BUSER sc_in sc_lv 1 signal 5 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"arr_0","role":"data","value":"16"},{"name":"arr_1","role":"data","value":"28"},{"name":"arr_2","role":"data","value":"40"},{"name":"arr_3","role":"data","value":"52"},{"name":"arr_4","role":"data","value":"64"},{"name":"arr_5","role":"data","value":"76"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_4", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_4", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_5_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_5_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_5_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_5_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_5_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_5_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_5_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_5_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_5_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_5_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_5_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_5_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_5_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_5_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_5_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_5_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_5", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_5_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_5_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_5_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_5_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_5_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_5_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_5_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_5_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_5_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_5_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_5_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_5_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_5_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_5_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_5_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_5_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_5_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_5_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_5_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_5_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_5", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_5_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_5_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_5_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_5_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_5_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_5_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_5_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_5_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_5_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "processArray",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem_0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_1", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_1_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_1_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_1_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_2", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_2_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_3", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_3_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_3_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_3_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_3_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_4", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_4_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_4_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_4_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_4_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_4_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_5", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_5_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_5_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_5_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_5_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_5_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "arr_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_5", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_0_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_1_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_2_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_3_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_4_m_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_5_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	processArray {
		gmem_0 {Type IO LastRead 11 FirstWrite 10}
		gmem_1 {Type IO LastRead 11 FirstWrite 10}
		gmem_2 {Type IO LastRead 11 FirstWrite 10}
		gmem_3 {Type IO LastRead 11 FirstWrite 10}
		gmem_4 {Type IO LastRead 11 FirstWrite 10}
		gmem_5 {Type IO LastRead 11 FirstWrite 10}
		arr_0 {Type I LastRead 0 FirstWrite -1}
		arr_1 {Type I LastRead 0 FirstWrite -1}
		arr_2 {Type I LastRead 0 FirstWrite -1}
		arr_3 {Type I LastRead 0 FirstWrite -1}
		arr_4 {Type I LastRead 0 FirstWrite -1}
		arr_5 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15", "Max" : "15"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_0 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 8 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 8 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	gmem_1 { m_axi {  { m_axi_gmem_1_AWVALID VALID 1 1 }  { m_axi_gmem_1_AWREADY READY 0 1 }  { m_axi_gmem_1_AWADDR ADDR 1 64 }  { m_axi_gmem_1_AWID ID 1 1 }  { m_axi_gmem_1_AWLEN SIZE 1 8 }  { m_axi_gmem_1_AWSIZE BURST 1 3 }  { m_axi_gmem_1_AWBURST LOCK 1 2 }  { m_axi_gmem_1_AWLOCK CACHE 1 2 }  { m_axi_gmem_1_AWCACHE PROT 1 4 }  { m_axi_gmem_1_AWPROT QOS 1 3 }  { m_axi_gmem_1_AWQOS REGION 1 4 }  { m_axi_gmem_1_AWREGION USER 1 4 }  { m_axi_gmem_1_AWUSER DATA 1 1 }  { m_axi_gmem_1_WVALID VALID 1 1 }  { m_axi_gmem_1_WREADY READY 0 1 }  { m_axi_gmem_1_WDATA FIFONUM 1 32 }  { m_axi_gmem_1_WSTRB STRB 1 4 }  { m_axi_gmem_1_WLAST LAST 1 1 }  { m_axi_gmem_1_WID ID 1 1 }  { m_axi_gmem_1_WUSER DATA 1 1 }  { m_axi_gmem_1_ARVALID VALID 1 1 }  { m_axi_gmem_1_ARREADY READY 0 1 }  { m_axi_gmem_1_ARADDR ADDR 1 64 }  { m_axi_gmem_1_ARID ID 1 1 }  { m_axi_gmem_1_ARLEN SIZE 1 8 }  { m_axi_gmem_1_ARSIZE BURST 1 3 }  { m_axi_gmem_1_ARBURST LOCK 1 2 }  { m_axi_gmem_1_ARLOCK CACHE 1 2 }  { m_axi_gmem_1_ARCACHE PROT 1 4 }  { m_axi_gmem_1_ARPROT QOS 1 3 }  { m_axi_gmem_1_ARQOS REGION 1 4 }  { m_axi_gmem_1_ARREGION USER 1 4 }  { m_axi_gmem_1_ARUSER DATA 1 1 }  { m_axi_gmem_1_RVALID VALID 0 1 }  { m_axi_gmem_1_RREADY READY 1 1 }  { m_axi_gmem_1_RDATA FIFONUM 0 32 }  { m_axi_gmem_1_RLAST LAST 0 1 }  { m_axi_gmem_1_RID ID 0 1 }  { m_axi_gmem_1_RUSER DATA 0 1 }  { m_axi_gmem_1_RRESP RESP 0 2 }  { m_axi_gmem_1_BVALID VALID 0 1 }  { m_axi_gmem_1_BREADY READY 1 1 }  { m_axi_gmem_1_BRESP RESP 0 2 }  { m_axi_gmem_1_BID ID 0 1 }  { m_axi_gmem_1_BUSER DATA 0 1 } } }
	gmem_2 { m_axi {  { m_axi_gmem_2_AWVALID VALID 1 1 }  { m_axi_gmem_2_AWREADY READY 0 1 }  { m_axi_gmem_2_AWADDR ADDR 1 64 }  { m_axi_gmem_2_AWID ID 1 1 }  { m_axi_gmem_2_AWLEN SIZE 1 8 }  { m_axi_gmem_2_AWSIZE BURST 1 3 }  { m_axi_gmem_2_AWBURST LOCK 1 2 }  { m_axi_gmem_2_AWLOCK CACHE 1 2 }  { m_axi_gmem_2_AWCACHE PROT 1 4 }  { m_axi_gmem_2_AWPROT QOS 1 3 }  { m_axi_gmem_2_AWQOS REGION 1 4 }  { m_axi_gmem_2_AWREGION USER 1 4 }  { m_axi_gmem_2_AWUSER DATA 1 1 }  { m_axi_gmem_2_WVALID VALID 1 1 }  { m_axi_gmem_2_WREADY READY 0 1 }  { m_axi_gmem_2_WDATA FIFONUM 1 32 }  { m_axi_gmem_2_WSTRB STRB 1 4 }  { m_axi_gmem_2_WLAST LAST 1 1 }  { m_axi_gmem_2_WID ID 1 1 }  { m_axi_gmem_2_WUSER DATA 1 1 }  { m_axi_gmem_2_ARVALID VALID 1 1 }  { m_axi_gmem_2_ARREADY READY 0 1 }  { m_axi_gmem_2_ARADDR ADDR 1 64 }  { m_axi_gmem_2_ARID ID 1 1 }  { m_axi_gmem_2_ARLEN SIZE 1 8 }  { m_axi_gmem_2_ARSIZE BURST 1 3 }  { m_axi_gmem_2_ARBURST LOCK 1 2 }  { m_axi_gmem_2_ARLOCK CACHE 1 2 }  { m_axi_gmem_2_ARCACHE PROT 1 4 }  { m_axi_gmem_2_ARPROT QOS 1 3 }  { m_axi_gmem_2_ARQOS REGION 1 4 }  { m_axi_gmem_2_ARREGION USER 1 4 }  { m_axi_gmem_2_ARUSER DATA 1 1 }  { m_axi_gmem_2_RVALID VALID 0 1 }  { m_axi_gmem_2_RREADY READY 1 1 }  { m_axi_gmem_2_RDATA FIFONUM 0 32 }  { m_axi_gmem_2_RLAST LAST 0 1 }  { m_axi_gmem_2_RID ID 0 1 }  { m_axi_gmem_2_RUSER DATA 0 1 }  { m_axi_gmem_2_RRESP RESP 0 2 }  { m_axi_gmem_2_BVALID VALID 0 1 }  { m_axi_gmem_2_BREADY READY 1 1 }  { m_axi_gmem_2_BRESP RESP 0 2 }  { m_axi_gmem_2_BID ID 0 1 }  { m_axi_gmem_2_BUSER DATA 0 1 } } }
	gmem_3 { m_axi {  { m_axi_gmem_3_AWVALID VALID 1 1 }  { m_axi_gmem_3_AWREADY READY 0 1 }  { m_axi_gmem_3_AWADDR ADDR 1 64 }  { m_axi_gmem_3_AWID ID 1 1 }  { m_axi_gmem_3_AWLEN SIZE 1 8 }  { m_axi_gmem_3_AWSIZE BURST 1 3 }  { m_axi_gmem_3_AWBURST LOCK 1 2 }  { m_axi_gmem_3_AWLOCK CACHE 1 2 }  { m_axi_gmem_3_AWCACHE PROT 1 4 }  { m_axi_gmem_3_AWPROT QOS 1 3 }  { m_axi_gmem_3_AWQOS REGION 1 4 }  { m_axi_gmem_3_AWREGION USER 1 4 }  { m_axi_gmem_3_AWUSER DATA 1 1 }  { m_axi_gmem_3_WVALID VALID 1 1 }  { m_axi_gmem_3_WREADY READY 0 1 }  { m_axi_gmem_3_WDATA FIFONUM 1 32 }  { m_axi_gmem_3_WSTRB STRB 1 4 }  { m_axi_gmem_3_WLAST LAST 1 1 }  { m_axi_gmem_3_WID ID 1 1 }  { m_axi_gmem_3_WUSER DATA 1 1 }  { m_axi_gmem_3_ARVALID VALID 1 1 }  { m_axi_gmem_3_ARREADY READY 0 1 }  { m_axi_gmem_3_ARADDR ADDR 1 64 }  { m_axi_gmem_3_ARID ID 1 1 }  { m_axi_gmem_3_ARLEN SIZE 1 8 }  { m_axi_gmem_3_ARSIZE BURST 1 3 }  { m_axi_gmem_3_ARBURST LOCK 1 2 }  { m_axi_gmem_3_ARLOCK CACHE 1 2 }  { m_axi_gmem_3_ARCACHE PROT 1 4 }  { m_axi_gmem_3_ARPROT QOS 1 3 }  { m_axi_gmem_3_ARQOS REGION 1 4 }  { m_axi_gmem_3_ARREGION USER 1 4 }  { m_axi_gmem_3_ARUSER DATA 1 1 }  { m_axi_gmem_3_RVALID VALID 0 1 }  { m_axi_gmem_3_RREADY READY 1 1 }  { m_axi_gmem_3_RDATA FIFONUM 0 32 }  { m_axi_gmem_3_RLAST LAST 0 1 }  { m_axi_gmem_3_RID ID 0 1 }  { m_axi_gmem_3_RUSER DATA 0 1 }  { m_axi_gmem_3_RRESP RESP 0 2 }  { m_axi_gmem_3_BVALID VALID 0 1 }  { m_axi_gmem_3_BREADY READY 1 1 }  { m_axi_gmem_3_BRESP RESP 0 2 }  { m_axi_gmem_3_BID ID 0 1 }  { m_axi_gmem_3_BUSER DATA 0 1 } } }
	gmem_4 { m_axi {  { m_axi_gmem_4_AWVALID VALID 1 1 }  { m_axi_gmem_4_AWREADY READY 0 1 }  { m_axi_gmem_4_AWADDR ADDR 1 64 }  { m_axi_gmem_4_AWID ID 1 1 }  { m_axi_gmem_4_AWLEN SIZE 1 8 }  { m_axi_gmem_4_AWSIZE BURST 1 3 }  { m_axi_gmem_4_AWBURST LOCK 1 2 }  { m_axi_gmem_4_AWLOCK CACHE 1 2 }  { m_axi_gmem_4_AWCACHE PROT 1 4 }  { m_axi_gmem_4_AWPROT QOS 1 3 }  { m_axi_gmem_4_AWQOS REGION 1 4 }  { m_axi_gmem_4_AWREGION USER 1 4 }  { m_axi_gmem_4_AWUSER DATA 1 1 }  { m_axi_gmem_4_WVALID VALID 1 1 }  { m_axi_gmem_4_WREADY READY 0 1 }  { m_axi_gmem_4_WDATA FIFONUM 1 32 }  { m_axi_gmem_4_WSTRB STRB 1 4 }  { m_axi_gmem_4_WLAST LAST 1 1 }  { m_axi_gmem_4_WID ID 1 1 }  { m_axi_gmem_4_WUSER DATA 1 1 }  { m_axi_gmem_4_ARVALID VALID 1 1 }  { m_axi_gmem_4_ARREADY READY 0 1 }  { m_axi_gmem_4_ARADDR ADDR 1 64 }  { m_axi_gmem_4_ARID ID 1 1 }  { m_axi_gmem_4_ARLEN SIZE 1 8 }  { m_axi_gmem_4_ARSIZE BURST 1 3 }  { m_axi_gmem_4_ARBURST LOCK 1 2 }  { m_axi_gmem_4_ARLOCK CACHE 1 2 }  { m_axi_gmem_4_ARCACHE PROT 1 4 }  { m_axi_gmem_4_ARPROT QOS 1 3 }  { m_axi_gmem_4_ARQOS REGION 1 4 }  { m_axi_gmem_4_ARREGION USER 1 4 }  { m_axi_gmem_4_ARUSER DATA 1 1 }  { m_axi_gmem_4_RVALID VALID 0 1 }  { m_axi_gmem_4_RREADY READY 1 1 }  { m_axi_gmem_4_RDATA FIFONUM 0 32 }  { m_axi_gmem_4_RLAST LAST 0 1 }  { m_axi_gmem_4_RID ID 0 1 }  { m_axi_gmem_4_RUSER DATA 0 1 }  { m_axi_gmem_4_RRESP RESP 0 2 }  { m_axi_gmem_4_BVALID VALID 0 1 }  { m_axi_gmem_4_BREADY READY 1 1 }  { m_axi_gmem_4_BRESP RESP 0 2 }  { m_axi_gmem_4_BID ID 0 1 }  { m_axi_gmem_4_BUSER DATA 0 1 } } }
	gmem_5 { m_axi {  { m_axi_gmem_5_AWVALID VALID 1 1 }  { m_axi_gmem_5_AWREADY READY 0 1 }  { m_axi_gmem_5_AWADDR ADDR 1 64 }  { m_axi_gmem_5_AWID ID 1 1 }  { m_axi_gmem_5_AWLEN SIZE 1 8 }  { m_axi_gmem_5_AWSIZE BURST 1 3 }  { m_axi_gmem_5_AWBURST LOCK 1 2 }  { m_axi_gmem_5_AWLOCK CACHE 1 2 }  { m_axi_gmem_5_AWCACHE PROT 1 4 }  { m_axi_gmem_5_AWPROT QOS 1 3 }  { m_axi_gmem_5_AWQOS REGION 1 4 }  { m_axi_gmem_5_AWREGION USER 1 4 }  { m_axi_gmem_5_AWUSER DATA 1 1 }  { m_axi_gmem_5_WVALID VALID 1 1 }  { m_axi_gmem_5_WREADY READY 0 1 }  { m_axi_gmem_5_WDATA FIFONUM 1 32 }  { m_axi_gmem_5_WSTRB STRB 1 4 }  { m_axi_gmem_5_WLAST LAST 1 1 }  { m_axi_gmem_5_WID ID 1 1 }  { m_axi_gmem_5_WUSER DATA 1 1 }  { m_axi_gmem_5_ARVALID VALID 1 1 }  { m_axi_gmem_5_ARREADY READY 0 1 }  { m_axi_gmem_5_ARADDR ADDR 1 64 }  { m_axi_gmem_5_ARID ID 1 1 }  { m_axi_gmem_5_ARLEN SIZE 1 8 }  { m_axi_gmem_5_ARSIZE BURST 1 3 }  { m_axi_gmem_5_ARBURST LOCK 1 2 }  { m_axi_gmem_5_ARLOCK CACHE 1 2 }  { m_axi_gmem_5_ARCACHE PROT 1 4 }  { m_axi_gmem_5_ARPROT QOS 1 3 }  { m_axi_gmem_5_ARQOS REGION 1 4 }  { m_axi_gmem_5_ARREGION USER 1 4 }  { m_axi_gmem_5_ARUSER DATA 1 1 }  { m_axi_gmem_5_RVALID VALID 0 1 }  { m_axi_gmem_5_RREADY READY 1 1 }  { m_axi_gmem_5_RDATA FIFONUM 0 32 }  { m_axi_gmem_5_RLAST LAST 0 1 }  { m_axi_gmem_5_RID ID 0 1 }  { m_axi_gmem_5_RUSER DATA 0 1 }  { m_axi_gmem_5_RRESP RESP 0 2 }  { m_axi_gmem_5_BVALID VALID 0 1 }  { m_axi_gmem_5_BREADY READY 1 1 }  { m_axi_gmem_5_BRESP RESP 0 2 }  { m_axi_gmem_5_BID ID 0 1 }  { m_axi_gmem_5_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem_0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem_1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem_2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem_3 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem_4 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem_5 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_0 1 }
	{ gmem_1 1 }
	{ gmem_2 1 }
	{ gmem_3 1 }
	{ gmem_4 1 }
	{ gmem_5 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_0 1 }
	{ gmem_1 1 }
	{ gmem_2 1 }
	{ gmem_3 1 }
	{ gmem_4 1 }
	{ gmem_5 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
