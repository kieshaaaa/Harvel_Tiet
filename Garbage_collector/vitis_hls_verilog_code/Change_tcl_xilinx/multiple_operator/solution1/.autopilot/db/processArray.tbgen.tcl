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
	{ arr_0 int 32 regular {pointer 1}  }
	{ arr_1 int 32 regular {pointer 0}  }
	{ arr_2 int 32 regular {pointer 0}  }
	{ arr_3 int 32 regular {pointer 1}  }
	{ arr_4 int 32 regular {pointer 0}  }
	{ arr_5 int 32 regular {pointer 0}  }
	{ arr_6 int 32 regular {pointer 1}  }
	{ arr_7 int 32 regular {pointer 0}  }
	{ arr_8 int 32 regular {pointer 0}  }
	{ arr_9 int 32 regular {pointer 1}  }
	{ arr_10 int 32 regular {pointer 0}  }
	{ arr_11 int 32 regular {pointer 0}  }
	{ arr2_0 int 32 regular {pointer 1}  }
	{ arr2_1 int 32 regular {pointer 0}  }
	{ arr2_2 int 32 regular {pointer 0}  }
	{ arr2_3 int 32 regular {pointer 0}  }
	{ arr2_4 int 32 regular {pointer 0}  }
	{ arr2_5 int 32 regular {pointer 0}  }
	{ arr2_6 int 32 regular {pointer 0}  }
	{ arr2_7 int 32 unused {pointer 0}  }
	{ arr2_8 int 32 unused {pointer 0}  }
	{ arr2_9 int 32 unused {pointer 0}  }
	{ arr3_0 int 32 unused {pointer 0}  }
	{ arr3_1 int 32 unused {pointer 0}  }
	{ arr3_2 int 32 unused {pointer 0}  }
	{ arr3_3 int 32 unused {pointer 0}  }
	{ arr3_4 int 32 unused {pointer 0}  }
	{ arr3_5 int 32 unused {pointer 0}  }
	{ arr3_6 int 32 unused {pointer 0}  }
	{ arr3_7 int 32 unused {pointer 0}  }
	{ arr3_8 int 32 unused {pointer 0}  }
	{ arr3_9 int 32 unused {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arr_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr_6", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr_9", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr2_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr2_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr3_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ arr_0 sc_out sc_lv 32 signal 0 } 
	{ arr_0_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ arr_1 sc_in sc_lv 32 signal 1 } 
	{ arr_2 sc_in sc_lv 32 signal 2 } 
	{ arr_3 sc_out sc_lv 32 signal 3 } 
	{ arr_3_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ arr_4 sc_in sc_lv 32 signal 4 } 
	{ arr_5 sc_in sc_lv 32 signal 5 } 
	{ arr_6 sc_out sc_lv 32 signal 6 } 
	{ arr_6_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ arr_7 sc_in sc_lv 32 signal 7 } 
	{ arr_8 sc_in sc_lv 32 signal 8 } 
	{ arr_9 sc_out sc_lv 32 signal 9 } 
	{ arr_9_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ arr_10 sc_in sc_lv 32 signal 10 } 
	{ arr_11 sc_in sc_lv 32 signal 11 } 
	{ arr2_0 sc_out sc_lv 32 signal 12 } 
	{ arr2_0_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ arr2_1 sc_in sc_lv 32 signal 13 } 
	{ arr2_2 sc_in sc_lv 32 signal 14 } 
	{ arr2_3 sc_in sc_lv 32 signal 15 } 
	{ arr2_4 sc_in sc_lv 32 signal 16 } 
	{ arr2_5 sc_in sc_lv 32 signal 17 } 
	{ arr2_6 sc_in sc_lv 32 signal 18 } 
	{ arr2_7 sc_in sc_lv 32 signal 19 } 
	{ arr2_8 sc_in sc_lv 32 signal 20 } 
	{ arr2_9 sc_in sc_lv 32 signal 21 } 
	{ arr3_0 sc_in sc_lv 32 signal 22 } 
	{ arr3_1 sc_in sc_lv 32 signal 23 } 
	{ arr3_2 sc_in sc_lv 32 signal 24 } 
	{ arr3_3 sc_in sc_lv 32 signal 25 } 
	{ arr3_4 sc_in sc_lv 32 signal 26 } 
	{ arr3_5 sc_in sc_lv 32 signal 27 } 
	{ arr3_6 sc_in sc_lv 32 signal 28 } 
	{ arr3_7 sc_in sc_lv 32 signal 29 } 
	{ arr3_8 sc_in sc_lv 32 signal 30 } 
	{ arr3_9 sc_in sc_lv 32 signal 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "arr_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_0", "role": "default" }} , 
 	{ "name": "arr_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_0", "role": "ap_vld" }} , 
 	{ "name": "arr_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_1", "role": "default" }} , 
 	{ "name": "arr_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_2", "role": "default" }} , 
 	{ "name": "arr_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_3", "role": "default" }} , 
 	{ "name": "arr_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_3", "role": "ap_vld" }} , 
 	{ "name": "arr_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_4", "role": "default" }} , 
 	{ "name": "arr_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_5", "role": "default" }} , 
 	{ "name": "arr_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_6", "role": "default" }} , 
 	{ "name": "arr_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_6", "role": "ap_vld" }} , 
 	{ "name": "arr_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_7", "role": "default" }} , 
 	{ "name": "arr_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_8", "role": "default" }} , 
 	{ "name": "arr_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_9", "role": "default" }} , 
 	{ "name": "arr_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_9", "role": "ap_vld" }} , 
 	{ "name": "arr_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_10", "role": "default" }} , 
 	{ "name": "arr_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_11", "role": "default" }} , 
 	{ "name": "arr2_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_0", "role": "default" }} , 
 	{ "name": "arr2_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr2_0", "role": "ap_vld" }} , 
 	{ "name": "arr2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_1", "role": "default" }} , 
 	{ "name": "arr2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_2", "role": "default" }} , 
 	{ "name": "arr2_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_3", "role": "default" }} , 
 	{ "name": "arr2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_4", "role": "default" }} , 
 	{ "name": "arr2_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_5", "role": "default" }} , 
 	{ "name": "arr2_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_6", "role": "default" }} , 
 	{ "name": "arr2_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_7", "role": "default" }} , 
 	{ "name": "arr2_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_8", "role": "default" }} , 
 	{ "name": "arr2_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr2_9", "role": "default" }} , 
 	{ "name": "arr3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_0", "role": "default" }} , 
 	{ "name": "arr3_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_1", "role": "default" }} , 
 	{ "name": "arr3_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_2", "role": "default" }} , 
 	{ "name": "arr3_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_3", "role": "default" }} , 
 	{ "name": "arr3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_4", "role": "default" }} , 
 	{ "name": "arr3_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_5", "role": "default" }} , 
 	{ "name": "arr3_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_6", "role": "default" }} , 
 	{ "name": "arr3_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_7", "role": "default" }} , 
 	{ "name": "arr3_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_8", "role": "default" }} , 
 	{ "name": "arr3_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr3_9", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "processArray",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "arr_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr2_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_9", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U6", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	processArray {
		arr_0 {Type O LastRead -1 FirstWrite 35}
		arr_1 {Type I LastRead 35 FirstWrite -1}
		arr_2 {Type I LastRead 35 FirstWrite -1}
		arr_3 {Type O LastRead -1 FirstWrite 35}
		arr_4 {Type I LastRead 35 FirstWrite -1}
		arr_5 {Type I LastRead 35 FirstWrite -1}
		arr_6 {Type O LastRead -1 FirstWrite 35}
		arr_7 {Type I LastRead 35 FirstWrite -1}
		arr_8 {Type I LastRead 35 FirstWrite -1}
		arr_9 {Type O LastRead -1 FirstWrite 35}
		arr_10 {Type I LastRead 0 FirstWrite -1}
		arr_11 {Type I LastRead 0 FirstWrite -1}
		arr2_0 {Type O LastRead -1 FirstWrite 35}
		arr2_1 {Type I LastRead 34 FirstWrite -1}
		arr2_2 {Type I LastRead 35 FirstWrite -1}
		arr2_3 {Type I LastRead 34 FirstWrite -1}
		arr2_4 {Type I LastRead 35 FirstWrite -1}
		arr2_5 {Type I LastRead 0 FirstWrite -1}
		arr2_6 {Type I LastRead 0 FirstWrite -1}
		arr2_7 {Type I LastRead -1 FirstWrite -1}
		arr2_8 {Type I LastRead -1 FirstWrite -1}
		arr2_9 {Type I LastRead -1 FirstWrite -1}
		arr3_0 {Type I LastRead -1 FirstWrite -1}
		arr3_1 {Type I LastRead -1 FirstWrite -1}
		arr3_2 {Type I LastRead -1 FirstWrite -1}
		arr3_3 {Type I LastRead -1 FirstWrite -1}
		arr3_4 {Type I LastRead -1 FirstWrite -1}
		arr3_5 {Type I LastRead -1 FirstWrite -1}
		arr3_6 {Type I LastRead -1 FirstWrite -1}
		arr3_7 {Type I LastRead -1 FirstWrite -1}
		arr3_8 {Type I LastRead -1 FirstWrite -1}
		arr3_9 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "35", "Max" : "35"}
	, {"Name" : "Interval", "Min" : "36", "Max" : "36"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	arr_0 { ap_vld {  { arr_0 out_data 1 32 }  { arr_0_ap_vld out_vld 1 1 } } }
	arr_1 { ap_none {  { arr_1 in_data 0 32 } } }
	arr_2 { ap_none {  { arr_2 in_data 0 32 } } }
	arr_3 { ap_vld {  { arr_3 out_data 1 32 }  { arr_3_ap_vld out_vld 1 1 } } }
	arr_4 { ap_none {  { arr_4 in_data 0 32 } } }
	arr_5 { ap_none {  { arr_5 in_data 0 32 } } }
	arr_6 { ap_vld {  { arr_6 out_data 1 32 }  { arr_6_ap_vld out_vld 1 1 } } }
	arr_7 { ap_none {  { arr_7 in_data 0 32 } } }
	arr_8 { ap_none {  { arr_8 in_data 0 32 } } }
	arr_9 { ap_vld {  { arr_9 out_data 1 32 }  { arr_9_ap_vld out_vld 1 1 } } }
	arr_10 { ap_none {  { arr_10 in_data 0 32 } } }
	arr_11 { ap_none {  { arr_11 in_data 0 32 } } }
	arr2_0 { ap_vld {  { arr2_0 out_data 1 32 }  { arr2_0_ap_vld out_vld 1 1 } } }
	arr2_1 { ap_none {  { arr2_1 in_data 0 32 } } }
	arr2_2 { ap_none {  { arr2_2 in_data 0 32 } } }
	arr2_3 { ap_none {  { arr2_3 in_data 0 32 } } }
	arr2_4 { ap_none {  { arr2_4 in_data 0 32 } } }
	arr2_5 { ap_none {  { arr2_5 in_data 0 32 } } }
	arr2_6 { ap_none {  { arr2_6 in_data 0 32 } } }
	arr2_7 { ap_none {  { arr2_7 in_data 0 32 } } }
	arr2_8 { ap_none {  { arr2_8 in_data 0 32 } } }
	arr2_9 { ap_none {  { arr2_9 in_data 0 32 } } }
	arr3_0 { ap_none {  { arr3_0 in_data 0 32 } } }
	arr3_1 { ap_none {  { arr3_1 in_data 0 32 } } }
	arr3_2 { ap_none {  { arr3_2 in_data 0 32 } } }
	arr3_3 { ap_none {  { arr3_3 in_data 0 32 } } }
	arr3_4 { ap_none {  { arr3_4 in_data 0 32 } } }
	arr3_5 { ap_none {  { arr3_5 in_data 0 32 } } }
	arr3_6 { ap_none {  { arr3_6 in_data 0 32 } } }
	arr3_7 { ap_none {  { arr3_7 in_data 0 32 } } }
	arr3_8 { ap_none {  { arr3_8 in_data 0 32 } } }
	arr3_9 { ap_none {  { arr3_9 in_data 0 32 } } }
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
