set moduleName multiplyMatrix_Pipeline_multiplyMatrix_label1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {multiplyMatrix_Pipeline_multiplyMatrix_label1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_2 int 32 regular {axi_master 2}  }
	{ gmem_1 int 32 regular {axi_master 2}  }
	{ gmem_0 int 32 regular {axi_master 2}  }
	{ sext_ln10_2 int 62 regular  }
	{ sext_ln10_1 int 62 regular  }
	{ sext_ln10 int 62 regular  }
	{ sext_ln10_3 int 62 regular  }
	{ sext_ln10_4 int 62 regular  }
	{ sext_ln10_5 int 62 regular  }
	{ gmem_load_cast3 int 32 regular  }
	{ p_cast8 int 32 regular  }
	{ p_cast3 int 32 regular  }
	{ p_cast4 int 32 regular  }
	{ p_cast1 int 32 regular  }
	{ p_cast5 int 32 regular  }
	{ p_cast6 int 32 regular  }
	{ p_cast2 int 32 regular  }
	{ p_cast7 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "mat1_2","offset": { "type": "dynamic","port_name": "mat1_2","bundle": "control"},"direction": "READONLY"},{"cName": "result_2","offset": { "type": "dynamic","port_name": "result_2","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem_1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "mat1_1","offset": { "type": "dynamic","port_name": "mat1_1","bundle": "control"},"direction": "READONLY"},{"cName": "result_1","offset": { "type": "dynamic","port_name": "result_1","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem_0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "mat1_0","offset": { "type": "dynamic","port_name": "mat1_0","bundle": "control"},"direction": "READONLY"},{"cName": "result_0","offset": { "type": "dynamic","port_name": "result_0","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln10_2", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln10_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln10", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln10_3", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln10_4", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln10_5", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_load_cast3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 159
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_AWLEN sc_out sc_lv 32 signal 1 } 
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
	{ m_axi_gmem_1_ARLEN sc_out sc_lv 32 signal 1 } 
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
	{ m_axi_gmem_1_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_gmem_1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_2_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_2_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_2_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_2_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_2_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_2_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_2_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_2_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_2_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_2_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_2_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_2_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_2_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_2_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_2_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_2_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_2_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_2_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_2_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_2_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_2_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_2_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_2_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_2_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_2_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_2_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_2_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_2_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_2_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem_2_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_2_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_2_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_2_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_2_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_2_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln10_2 sc_in sc_lv 62 signal 3 } 
	{ sext_ln10_1 sc_in sc_lv 62 signal 4 } 
	{ sext_ln10 sc_in sc_lv 62 signal 5 } 
	{ sext_ln10_3 sc_in sc_lv 62 signal 6 } 
	{ sext_ln10_4 sc_in sc_lv 62 signal 7 } 
	{ sext_ln10_5 sc_in sc_lv 62 signal 8 } 
	{ gmem_load_cast3 sc_in sc_lv 32 signal 9 } 
	{ p_cast8 sc_in sc_lv 32 signal 10 } 
	{ p_cast3 sc_in sc_lv 32 signal 11 } 
	{ p_cast4 sc_in sc_lv 32 signal 12 } 
	{ p_cast1 sc_in sc_lv 32 signal 13 } 
	{ p_cast5 sc_in sc_lv 32 signal 14 } 
	{ p_cast6 sc_in sc_lv 32 signal 15 } 
	{ p_cast2 sc_in sc_lv 32 signal 16 } 
	{ p_cast7 sc_in sc_lv 32 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_0", "role": "RFIFONUM" }} , 
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
 	{ "name": "m_axi_gmem_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_1", "role": "RFIFONUM" }} , 
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
 	{ "name": "m_axi_gmem_2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BUSER" }} , 
 	{ "name": "sext_ln10_2", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln10_2", "role": "default" }} , 
 	{ "name": "sext_ln10_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln10_1", "role": "default" }} , 
 	{ "name": "sext_ln10", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln10", "role": "default" }} , 
 	{ "name": "sext_ln10_3", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln10_3", "role": "default" }} , 
 	{ "name": "sext_ln10_4", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln10_4", "role": "default" }} , 
 	{ "name": "sext_ln10_5", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln10_5", "role": "default" }} , 
 	{ "name": "gmem_load_cast3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_load_cast3", "role": "default" }} , 
 	{ "name": "p_cast8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cast8", "role": "default" }} , 
 	{ "name": "p_cast3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cast3", "role": "default" }} , 
 	{ "name": "p_cast4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cast4", "role": "default" }} , 
 	{ "name": "p_cast1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cast1", "role": "default" }} , 
 	{ "name": "p_cast5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cast5", "role": "default" }} , 
 	{ "name": "p_cast6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cast6", "role": "default" }} , 
 	{ "name": "p_cast2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cast2", "role": "default" }} , 
 	{ "name": "p_cast7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cast7", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "multiplyMatrix_Pipeline_multiplyMatrix_label1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem_2", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_2_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_1", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_1_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_1_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln10_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln10_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln10_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln10_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln10_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_load_cast3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast7", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "multiplyMatrix_label1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_2ns_2ns_2_2_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_32ns_32ns_32_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_32ns_32ns_32_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_32ns_32ns_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_32ns_32ns_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_32ns_32ns_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_32ns_32ns_32_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	multiplyMatrix_Pipeline_multiplyMatrix_label1 {
		gmem_2 {Type IO LastRead 1 FirstWrite 10}
		gmem_1 {Type IO LastRead 1 FirstWrite 9}
		gmem_0 {Type IO LastRead 1 FirstWrite 9}
		sext_ln10_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln10_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln10 {Type I LastRead 0 FirstWrite -1}
		sext_ln10_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln10_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln10_5 {Type I LastRead 0 FirstWrite -1}
		gmem_load_cast3 {Type I LastRead 0 FirstWrite -1}
		p_cast8 {Type I LastRead 0 FirstWrite -1}
		p_cast3 {Type I LastRead 0 FirstWrite -1}
		p_cast4 {Type I LastRead 0 FirstWrite -1}
		p_cast1 {Type I LastRead 0 FirstWrite -1}
		p_cast5 {Type I LastRead 0 FirstWrite -1}
		p_cast6 {Type I LastRead 0 FirstWrite -1}
		p_cast2 {Type I LastRead 0 FirstWrite -1}
		p_cast7 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_2_AWVALID VALID 1 1 }  { m_axi_gmem_2_AWREADY READY 0 1 }  { m_axi_gmem_2_AWADDR ADDR 1 64 }  { m_axi_gmem_2_AWID ID 1 1 }  { m_axi_gmem_2_AWLEN SIZE 1 32 }  { m_axi_gmem_2_AWSIZE BURST 1 3 }  { m_axi_gmem_2_AWBURST LOCK 1 2 }  { m_axi_gmem_2_AWLOCK CACHE 1 2 }  { m_axi_gmem_2_AWCACHE PROT 1 4 }  { m_axi_gmem_2_AWPROT QOS 1 3 }  { m_axi_gmem_2_AWQOS REGION 1 4 }  { m_axi_gmem_2_AWREGION USER 1 4 }  { m_axi_gmem_2_AWUSER DATA 1 1 }  { m_axi_gmem_2_WVALID VALID 1 1 }  { m_axi_gmem_2_WREADY READY 0 1 }  { m_axi_gmem_2_WDATA FIFONUM 1 32 }  { m_axi_gmem_2_WSTRB STRB 1 4 }  { m_axi_gmem_2_WLAST LAST 1 1 }  { m_axi_gmem_2_WID ID 1 1 }  { m_axi_gmem_2_WUSER DATA 1 1 }  { m_axi_gmem_2_ARVALID VALID 1 1 }  { m_axi_gmem_2_ARREADY READY 0 1 }  { m_axi_gmem_2_ARADDR ADDR 1 64 }  { m_axi_gmem_2_ARID ID 1 1 }  { m_axi_gmem_2_ARLEN SIZE 1 32 }  { m_axi_gmem_2_ARSIZE BURST 1 3 }  { m_axi_gmem_2_ARBURST LOCK 1 2 }  { m_axi_gmem_2_ARLOCK CACHE 1 2 }  { m_axi_gmem_2_ARCACHE PROT 1 4 }  { m_axi_gmem_2_ARPROT QOS 1 3 }  { m_axi_gmem_2_ARQOS REGION 1 4 }  { m_axi_gmem_2_ARREGION USER 1 4 }  { m_axi_gmem_2_ARUSER DATA 1 1 }  { m_axi_gmem_2_RVALID VALID 0 1 }  { m_axi_gmem_2_RREADY READY 1 1 }  { m_axi_gmem_2_RDATA FIFONUM 0 32 }  { m_axi_gmem_2_RLAST LAST 0 1 }  { m_axi_gmem_2_RID ID 0 1 }  { m_axi_gmem_2_RFIFONUM LEN 0 9 }  { m_axi_gmem_2_RUSER DATA 0 1 }  { m_axi_gmem_2_RRESP RESP 0 2 }  { m_axi_gmem_2_BVALID VALID 0 1 }  { m_axi_gmem_2_BREADY READY 1 1 }  { m_axi_gmem_2_BRESP RESP 0 2 }  { m_axi_gmem_2_BID ID 0 1 }  { m_axi_gmem_2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_gmem_1_AWVALID VALID 1 1 }  { m_axi_gmem_1_AWREADY READY 0 1 }  { m_axi_gmem_1_AWADDR ADDR 1 64 }  { m_axi_gmem_1_AWID ID 1 1 }  { m_axi_gmem_1_AWLEN SIZE 1 32 }  { m_axi_gmem_1_AWSIZE BURST 1 3 }  { m_axi_gmem_1_AWBURST LOCK 1 2 }  { m_axi_gmem_1_AWLOCK CACHE 1 2 }  { m_axi_gmem_1_AWCACHE PROT 1 4 }  { m_axi_gmem_1_AWPROT QOS 1 3 }  { m_axi_gmem_1_AWQOS REGION 1 4 }  { m_axi_gmem_1_AWREGION USER 1 4 }  { m_axi_gmem_1_AWUSER DATA 1 1 }  { m_axi_gmem_1_WVALID VALID 1 1 }  { m_axi_gmem_1_WREADY READY 0 1 }  { m_axi_gmem_1_WDATA FIFONUM 1 32 }  { m_axi_gmem_1_WSTRB STRB 1 4 }  { m_axi_gmem_1_WLAST LAST 1 1 }  { m_axi_gmem_1_WID ID 1 1 }  { m_axi_gmem_1_WUSER DATA 1 1 }  { m_axi_gmem_1_ARVALID VALID 1 1 }  { m_axi_gmem_1_ARREADY READY 0 1 }  { m_axi_gmem_1_ARADDR ADDR 1 64 }  { m_axi_gmem_1_ARID ID 1 1 }  { m_axi_gmem_1_ARLEN SIZE 1 32 }  { m_axi_gmem_1_ARSIZE BURST 1 3 }  { m_axi_gmem_1_ARBURST LOCK 1 2 }  { m_axi_gmem_1_ARLOCK CACHE 1 2 }  { m_axi_gmem_1_ARCACHE PROT 1 4 }  { m_axi_gmem_1_ARPROT QOS 1 3 }  { m_axi_gmem_1_ARQOS REGION 1 4 }  { m_axi_gmem_1_ARREGION USER 1 4 }  { m_axi_gmem_1_ARUSER DATA 1 1 }  { m_axi_gmem_1_RVALID VALID 0 1 }  { m_axi_gmem_1_RREADY READY 1 1 }  { m_axi_gmem_1_RDATA FIFONUM 0 32 }  { m_axi_gmem_1_RLAST LAST 0 1 }  { m_axi_gmem_1_RID ID 0 1 }  { m_axi_gmem_1_RFIFONUM LEN 0 9 }  { m_axi_gmem_1_RUSER DATA 0 1 }  { m_axi_gmem_1_RRESP RESP 0 2 }  { m_axi_gmem_1_BVALID VALID 0 1 }  { m_axi_gmem_1_BREADY READY 1 1 }  { m_axi_gmem_1_BRESP RESP 0 2 }  { m_axi_gmem_1_BID ID 0 1 }  { m_axi_gmem_1_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	sext_ln10_2 { ap_none {  { sext_ln10_2 in_data 0 62 } } }
	sext_ln10_1 { ap_none {  { sext_ln10_1 in_data 0 62 } } }
	sext_ln10 { ap_none {  { sext_ln10 in_data 0 62 } } }
	sext_ln10_3 { ap_none {  { sext_ln10_3 in_data 0 62 } } }
	sext_ln10_4 { ap_none {  { sext_ln10_4 in_data 0 62 } } }
	sext_ln10_5 { ap_none {  { sext_ln10_5 in_data 0 62 } } }
	gmem_load_cast3 { ap_none {  { gmem_load_cast3 in_data 0 32 } } }
	p_cast8 { ap_none {  { p_cast8 in_data 0 32 } } }
	p_cast3 { ap_none {  { p_cast3 in_data 0 32 } } }
	p_cast4 { ap_none {  { p_cast4 in_data 0 32 } } }
	p_cast1 { ap_none {  { p_cast1 in_data 0 32 } } }
	p_cast5 { ap_none {  { p_cast5 in_data 0 32 } } }
	p_cast6 { ap_none {  { p_cast6 in_data 0 32 } } }
	p_cast2 { ap_none {  { p_cast2 in_data 0 32 } } }
	p_cast7 { ap_none {  { p_cast7 in_data 0 32 } } }
}
