set moduleName processArray
set isTopModule 1
set isCombinational 1
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
	{ arr_0 int 32 regular {pointer 2}  }
	{ arr_1 int 32 regular {pointer 2}  }
	{ arr_2 int 32 regular {pointer 0}  }
	{ arr_3 int 32 regular {pointer 1}  }
	{ arr_4 int 32 unused {pointer 0}  }
	{ arr2_0 int 32 regular {pointer 2}  }
	{ arr2_1 int 32 regular {pointer 1}  }
	{ arr2_2 int 32 regular {pointer 0}  }
	{ arr2_3 int 32 unused {pointer 0}  }
	{ arr2_4 int 32 regular {pointer 0}  }
	{ arr3_0 int 32 regular {pointer 1}  }
	{ arr3_1 int 32 unused {pointer 0}  }
	{ arr3_2 int 32 unused {pointer 0}  }
	{ arr3_3 int 32 unused {pointer 0}  }
	{ arr3_4 int 32 unused {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arr_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "arr_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "arr_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "arr2_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr2_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr3_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ arr_0_i sc_in sc_lv 32 signal 0 } 
	{ arr_0_o sc_out sc_lv 32 signal 0 } 
	{ arr_0_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ arr_1_i sc_in sc_lv 32 signal 1 } 
	{ arr_1_o sc_out sc_lv 32 signal 1 } 
	{ arr_1_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ arr_2 sc_in sc_lv 32 signal 2 } 
	{ arr_3 sc_out sc_lv 32 signal 3 } 
	{ arr_3_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ arr_4 sc_in sc_lv 32 signal 4 } 
	{ arr2_0_i sc_in sc_lv 32 signal 5 } 
	{ arr2_0_o sc_out sc_lv 32 signal 5 } 
	{ arr2_0_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ arr2_1 sc_out sc_lv 32 signal 6 } 
	{ arr2_1_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ arr2_2 sc_in sc_lv 32 signal 7 } 
	{ arr2_3 sc_in sc_lv 32 signal 8 } 
	{ arr2_4 sc_in sc_lv 32 signal 9 } 
	{ arr3_0 sc_out sc_lv 32 signal 10 } 
	{ arr3_0_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ arr3_1 sc_in sc_lv 32 signal 11 } 
	{ arr3_2 sc_in sc_lv 32 signal 12 } 
	{ arr3_3 sc_in sc_lv 32 signal 13 } 
	{ arr3_4 sc_in sc_lv 32 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "arr_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_0", "role": "i" }} , 
 	{ "name": "arr_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_0", "role": "o" }} , 
 	{ "name": "arr_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_0", "role": "o_ap_vld" }} , 
 	{ "name": "arr_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_1", "role": "i" }} , 
 	{ "name": "arr_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_1", "role": "o" }} , 
 	{ "name": "arr_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_1", "role": "o_ap_vld" }} , 
 	{ "name": "arr_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_2", "role": "default" }} , 
 	{ "name": "arr_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_3", "role": "default" }} , 
 	{ "name": "arr_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_3", "role": "ap_vld" }} , 
 	{ "name": "arr_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_4", "role": "default" }} , 
 	{ "name": "arr2_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_0", "role": "i" }} , 
 	{ "name": "arr2_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_0", "role": "o" }} , 
 	{ "name": "arr2_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr2_0", "role": "o_ap_vld" }} , 
 	{ "name": "arr2_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_1", "role": "default" }} , 
 	{ "name": "arr2_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr2_1", "role": "ap_vld" }} , 
 	{ "name": "arr2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_2", "role": "default" }} , 
 	{ "name": "arr2_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_3", "role": "default" }} , 
 	{ "name": "arr2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_4", "role": "default" }} , 
 	{ "name": "arr3_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_0", "role": "default" }} , 
 	{ "name": "arr3_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr3_0", "role": "ap_vld" }} , 
 	{ "name": "arr3_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_1", "role": "default" }} , 
 	{ "name": "arr3_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_2", "role": "default" }} , 
 	{ "name": "arr3_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_3", "role": "default" }} , 
 	{ "name": "arr3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "processArray",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "arr_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr2_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr3_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_4", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	processArray {
		arr_0 {Type IO LastRead 0 FirstWrite 0}
		arr_1 {Type IO LastRead 0 FirstWrite 0}
		arr_2 {Type I LastRead 0 FirstWrite -1}
		arr_3 {Type O LastRead -1 FirstWrite 0}
		arr_4 {Type I LastRead -1 FirstWrite -1}
		arr2_0 {Type IO LastRead 0 FirstWrite 0}
		arr2_1 {Type O LastRead -1 FirstWrite 0}
		arr2_2 {Type I LastRead 0 FirstWrite -1}
		arr2_3 {Type I LastRead -1 FirstWrite -1}
		arr2_4 {Type I LastRead 0 FirstWrite -1}
		arr3_0 {Type O LastRead -1 FirstWrite 0}
		arr3_1 {Type I LastRead -1 FirstWrite -1}
		arr3_2 {Type I LastRead -1 FirstWrite -1}
		arr3_3 {Type I LastRead -1 FirstWrite -1}
		arr3_4 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	arr_0 { ap_ovld {  { arr_0_i in_data 0 32 }  { arr_0_o out_data 1 32 }  { arr_0_o_ap_vld out_vld 1 1 } } }
	arr_1 { ap_ovld {  { arr_1_i in_data 0 32 }  { arr_1_o out_data 1 32 }  { arr_1_o_ap_vld out_vld 1 1 } } }
	arr_2 { ap_none {  { arr_2 in_data 0 32 } } }
	arr_3 { ap_vld {  { arr_3 out_data 1 32 }  { arr_3_ap_vld out_vld 1 1 } } }
	arr_4 { ap_none {  { arr_4 in_data 0 32 } } }
	arr2_0 { ap_ovld {  { arr2_0_i in_data 0 32 }  { arr2_0_o out_data 1 32 }  { arr2_0_o_ap_vld out_vld 1 1 } } }
	arr2_1 { ap_vld {  { arr2_1 out_data 1 32 }  { arr2_1_ap_vld out_vld 1 1 } } }
	arr2_2 { ap_none {  { arr2_2 in_data 0 32 } } }
	arr2_3 { ap_none {  { arr2_3 in_data 0 32 } } }
	arr2_4 { ap_none {  { arr2_4 in_data 0 32 } } }
	arr3_0 { ap_vld {  { arr3_0 out_data 1 32 }  { arr3_0_ap_vld out_vld 1 1 } } }
	arr3_1 { ap_none {  { arr3_1 in_data 0 32 } } }
	arr3_2 { ap_none {  { arr3_2 in_data 0 32 } } }
	arr3_3 { ap_none {  { arr3_3 in_data 0 32 } } }
	arr3_4 { ap_none {  { arr3_4 in_data 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
