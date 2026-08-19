set moduleName multiplyMatrix
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {multiplyMatrix}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_0 int 32 regular {axi_master 2}  }
	{ gmem_1 int 32 regular {axi_master 2}  }
	{ gmem_2 int 32 regular {axi_master 2}  }
	{ gmem int 512 regular {axi_master 0}  }
	{ mat1_0 int 64 regular {axi_slave 0}  }
	{ mat1_1 int 64 regular {axi_slave 0}  }
	{ mat1_2 int 64 regular {axi_slave 0}  }
	{ mat2 int 64 regular {axi_slave 0}  }
	{ result_0 int 64 regular {axi_slave 0}  }
	{ result_1 int 64 regular {axi_slave 0}  }
	{ result_2 int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "mat1_0","offset": { "type": "dynamic","port_name": "mat1_0","bundle": "control"},"direction": "READONLY"},{"cName": "result_0","offset": { "type": "dynamic","port_name": "result_0","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem_1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "mat1_1","offset": { "type": "dynamic","port_name": "mat1_1","bundle": "control"},"direction": "READONLY"},{"cName": "result_1","offset": { "type": "dynamic","port_name": "result_1","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem_2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "mat1_2","offset": { "type": "dynamic","port_name": "mat1_2","bundle": "control"},"direction": "READONLY"},{"cName": "result_2","offset": { "type": "dynamic","port_name": "result_2","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "mat2","offset": { "type": "dynamic","port_name": "mat2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "mat1_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "mat1_1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "mat1_2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "mat2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "result_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "result_1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "result_2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} ]}
# RTL Port declarations: 
set portNum 200
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
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
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 3 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 3 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 3 } 
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
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"multiplyMatrix","role":"start","value":"0","valid_bit":"0"},{"name":"multiplyMatrix","role":"continue","value":"0","valid_bit":"4"},{"name":"multiplyMatrix","role":"auto_start","value":"0","valid_bit":"7"},{"name":"mat1_0","role":"data","value":"16"},{"name":"mat1_1","role":"data","value":"28"},{"name":"mat1_2","role":"data","value":"40"},{"name":"mat2","role":"data","value":"52"},{"name":"result_0","role":"data","value":"64"},{"name":"result_1","role":"data","value":"76"},{"name":"result_2","role":"data","value":"88"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"multiplyMatrix","role":"start","value":"0","valid_bit":"0"},{"name":"multiplyMatrix","role":"done","value":"0","valid_bit":"1"},{"name":"multiplyMatrix","role":"idle","value":"0","valid_bit":"2"},{"name":"multiplyMatrix","role":"ready","value":"0","valid_bit":"3"},{"name":"multiplyMatrix","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
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
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "19", "20", "21", "22", "23"],
		"CDFG" : "multiplyMatrix",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "157",
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
					{"Name" : "gmem_0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237", "Port" : "gmem_0", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "gmem_1", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_1_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237", "Port" : "gmem_1", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "gmem_2", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_2_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237", "Port" : "gmem_2", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "mat1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat2", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.add_2ns_2ns_2_2_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.mul_32s_32s_32_5_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.mul_32s_32s_32_5_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.mul_32s_32s_32_5_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.mul_32s_32s_32_5_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.mul_32s_32s_32_5_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.mul_32s_32s_32_5_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.mul_32s_32s_32_5_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.mul_32s_32s_32_5_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.mul_32s_32s_32_5_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.add_32ns_32ns_32_1_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.add_32ns_32ns_32_1_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.add_32ns_32ns_32_1_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.add_32ns_32ns_32_1_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.add_32ns_32ns_32_1_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.add_32ns_32ns_32_1_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiplyMatrix_Pipeline_multiplyMatrix_label1_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_0_m_axi_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_1_m_axi_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_2_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	multiplyMatrix {
		gmem_0 {Type IO LastRead 73 FirstWrite 9}
		gmem_1 {Type IO LastRead 73 FirstWrite 9}
		gmem_2 {Type IO LastRead 73 FirstWrite 10}
		gmem {Type I LastRead 71 FirstWrite -1}
		mat1_0 {Type I LastRead 0 FirstWrite -1}
		mat1_1 {Type I LastRead 0 FirstWrite -1}
		mat1_2 {Type I LastRead 0 FirstWrite -1}
		mat2 {Type I LastRead 0 FirstWrite -1}
		result_0 {Type I LastRead 69 FirstWrite -1}
		result_1 {Type I LastRead 69 FirstWrite -1}
		result_2 {Type I LastRead 69 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "157", "Max" : "157"}
	, {"Name" : "Interval", "Min" : "158", "Max" : "158"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_0 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 8 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 8 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	gmem_1 { m_axi {  { m_axi_gmem_1_AWVALID VALID 1 1 }  { m_axi_gmem_1_AWREADY READY 0 1 }  { m_axi_gmem_1_AWADDR ADDR 1 64 }  { m_axi_gmem_1_AWID ID 1 1 }  { m_axi_gmem_1_AWLEN SIZE 1 8 }  { m_axi_gmem_1_AWSIZE BURST 1 3 }  { m_axi_gmem_1_AWBURST LOCK 1 2 }  { m_axi_gmem_1_AWLOCK CACHE 1 2 }  { m_axi_gmem_1_AWCACHE PROT 1 4 }  { m_axi_gmem_1_AWPROT QOS 1 3 }  { m_axi_gmem_1_AWQOS REGION 1 4 }  { m_axi_gmem_1_AWREGION USER 1 4 }  { m_axi_gmem_1_AWUSER DATA 1 1 }  { m_axi_gmem_1_WVALID VALID 1 1 }  { m_axi_gmem_1_WREADY READY 0 1 }  { m_axi_gmem_1_WDATA FIFONUM 1 32 }  { m_axi_gmem_1_WSTRB STRB 1 4 }  { m_axi_gmem_1_WLAST LAST 1 1 }  { m_axi_gmem_1_WID ID 1 1 }  { m_axi_gmem_1_WUSER DATA 1 1 }  { m_axi_gmem_1_ARVALID VALID 1 1 }  { m_axi_gmem_1_ARREADY READY 0 1 }  { m_axi_gmem_1_ARADDR ADDR 1 64 }  { m_axi_gmem_1_ARID ID 1 1 }  { m_axi_gmem_1_ARLEN SIZE 1 8 }  { m_axi_gmem_1_ARSIZE BURST 1 3 }  { m_axi_gmem_1_ARBURST LOCK 1 2 }  { m_axi_gmem_1_ARLOCK CACHE 1 2 }  { m_axi_gmem_1_ARCACHE PROT 1 4 }  { m_axi_gmem_1_ARPROT QOS 1 3 }  { m_axi_gmem_1_ARQOS REGION 1 4 }  { m_axi_gmem_1_ARREGION USER 1 4 }  { m_axi_gmem_1_ARUSER DATA 1 1 }  { m_axi_gmem_1_RVALID VALID 0 1 }  { m_axi_gmem_1_RREADY READY 1 1 }  { m_axi_gmem_1_RDATA FIFONUM 0 32 }  { m_axi_gmem_1_RLAST LAST 0 1 }  { m_axi_gmem_1_RID ID 0 1 }  { m_axi_gmem_1_RUSER DATA 0 1 }  { m_axi_gmem_1_RRESP RESP 0 2 }  { m_axi_gmem_1_BVALID VALID 0 1 }  { m_axi_gmem_1_BREADY READY 1 1 }  { m_axi_gmem_1_BRESP RESP 0 2 }  { m_axi_gmem_1_BID ID 0 1 }  { m_axi_gmem_1_BUSER DATA 0 1 } } }
	gmem_2 { m_axi {  { m_axi_gmem_2_AWVALID VALID 1 1 }  { m_axi_gmem_2_AWREADY READY 0 1 }  { m_axi_gmem_2_AWADDR ADDR 1 64 }  { m_axi_gmem_2_AWID ID 1 1 }  { m_axi_gmem_2_AWLEN SIZE 1 8 }  { m_axi_gmem_2_AWSIZE BURST 1 3 }  { m_axi_gmem_2_AWBURST LOCK 1 2 }  { m_axi_gmem_2_AWLOCK CACHE 1 2 }  { m_axi_gmem_2_AWCACHE PROT 1 4 }  { m_axi_gmem_2_AWPROT QOS 1 3 }  { m_axi_gmem_2_AWQOS REGION 1 4 }  { m_axi_gmem_2_AWREGION USER 1 4 }  { m_axi_gmem_2_AWUSER DATA 1 1 }  { m_axi_gmem_2_WVALID VALID 1 1 }  { m_axi_gmem_2_WREADY READY 0 1 }  { m_axi_gmem_2_WDATA FIFONUM 1 32 }  { m_axi_gmem_2_WSTRB STRB 1 4 }  { m_axi_gmem_2_WLAST LAST 1 1 }  { m_axi_gmem_2_WID ID 1 1 }  { m_axi_gmem_2_WUSER DATA 1 1 }  { m_axi_gmem_2_ARVALID VALID 1 1 }  { m_axi_gmem_2_ARREADY READY 0 1 }  { m_axi_gmem_2_ARADDR ADDR 1 64 }  { m_axi_gmem_2_ARID ID 1 1 }  { m_axi_gmem_2_ARLEN SIZE 1 8 }  { m_axi_gmem_2_ARSIZE BURST 1 3 }  { m_axi_gmem_2_ARBURST LOCK 1 2 }  { m_axi_gmem_2_ARLOCK CACHE 1 2 }  { m_axi_gmem_2_ARCACHE PROT 1 4 }  { m_axi_gmem_2_ARPROT QOS 1 3 }  { m_axi_gmem_2_ARQOS REGION 1 4 }  { m_axi_gmem_2_ARREGION USER 1 4 }  { m_axi_gmem_2_ARUSER DATA 1 1 }  { m_axi_gmem_2_RVALID VALID 0 1 }  { m_axi_gmem_2_RREADY READY 1 1 }  { m_axi_gmem_2_RDATA FIFONUM 0 32 }  { m_axi_gmem_2_RLAST LAST 0 1 }  { m_axi_gmem_2_RID ID 0 1 }  { m_axi_gmem_2_RUSER DATA 0 1 }  { m_axi_gmem_2_RRESP RESP 0 2 }  { m_axi_gmem_2_BVALID VALID 0 1 }  { m_axi_gmem_2_BREADY READY 1 1 }  { m_axi_gmem_2_BRESP RESP 0 2 }  { m_axi_gmem_2_BID ID 0 1 }  { m_axi_gmem_2_BUSER DATA 0 1 } } }
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem_0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem_1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem_2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_0 64 }
	{ gmem_1 64 }
	{ gmem_2 64 }
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_0 64 }
	{ gmem_1 64 }
	{ gmem_2 64 }
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
