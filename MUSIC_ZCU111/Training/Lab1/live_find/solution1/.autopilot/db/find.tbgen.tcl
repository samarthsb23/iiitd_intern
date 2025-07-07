set moduleName find
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {find}
set C_modelType { void 0 }
set C_modelArgList {
	{ val_r int 8 regular {axi_s 0 ""  { val_r Data } }  }
	{ in_vec_V_data_V int 32 regular {axi_s 0 volatile  { in_vec Data } }  }
	{ in_vec_V_last_V int 1 regular {axi_s 0 volatile  { in_vec Last } }  }
	{ out_vec_V_data_V int 32 regular {axi_s 1 volatile  { out_vec Data } }  }
	{ out_vec_V_last_V int 1 regular {axi_s 1 volatile  { out_vec Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "val_r", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "val","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "in_vec_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_vec.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_vec_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_vec.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_vec_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_vec.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_vec_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_vec.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ val_r_TDATA sc_in sc_lv 8 signal 0 } 
	{ val_r_TVALID sc_in sc_logic 1 invld 0 } 
	{ val_r_TREADY sc_out sc_logic 1 inacc 0 } 
	{ in_vec_TDATA sc_in sc_lv 32 signal 1 } 
	{ in_vec_TVALID sc_in sc_logic 1 invld 2 } 
	{ in_vec_TREADY sc_out sc_logic 1 inacc 2 } 
	{ in_vec_TLAST sc_in sc_lv 1 signal 2 } 
	{ out_vec_TDATA sc_out sc_lv 32 signal 3 } 
	{ out_vec_TVALID sc_out sc_logic 1 outvld 4 } 
	{ out_vec_TREADY sc_in sc_logic 1 outacc 4 } 
	{ out_vec_TLAST sc_out sc_lv 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "val_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_r", "role": "TDATA" }} , 
 	{ "name": "val_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "val_r", "role": "TVALID" }} , 
 	{ "name": "val_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "val_r", "role": "TREADY" }} , 
 	{ "name": "in_vec_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_vec_V_data_V", "role": "default" }} , 
 	{ "name": "in_vec_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_vec_V_last_V", "role": "default" }} , 
 	{ "name": "in_vec_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_vec_V_last_V", "role": "default" }} , 
 	{ "name": "in_vec_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_vec_V_last_V", "role": "default" }} , 
 	{ "name": "out_vec_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_vec_V_data_V", "role": "default" }} , 
 	{ "name": "out_vec_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_vec_V_last_V", "role": "default" }} , 
 	{ "name": "out_vec_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_vec_V_last_V", "role": "default" }} , 
 	{ "name": "out_vec_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_vec_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "find",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "65",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "val_r", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "val_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_vec_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_vec_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_vec_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "out_vec_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_vec_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_vec_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_val_r_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_vec_V_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_vec_V_last_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_vec_V_data_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_vec_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	find {
		val_r {Type I LastRead 0 FirstWrite -1}
		in_vec_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_vec_V_last_V {Type I LastRead 1 FirstWrite -1}
		out_vec_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_vec_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65", "Max" : "65"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	val_r { axis {  { val_r_TDATA in_data 0 8 }  { val_r_TVALID in_vld 0 1 }  { val_r_TREADY in_acc 1 1 } } }
	in_vec_V_data_V { axis {  { in_vec_TDATA in_data 0 32 } } }
	in_vec_V_last_V { axis {  { in_vec_TVALID in_vld 0 1 }  { in_vec_TREADY in_acc 1 1 }  { in_vec_TLAST in_data 0 1 } } }
	out_vec_V_data_V { axis {  { out_vec_TDATA out_data 1 32 } } }
	out_vec_V_last_V { axis {  { out_vec_TVALID out_vld 1 1 }  { out_vec_TREADY out_acc 0 1 }  { out_vec_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

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
