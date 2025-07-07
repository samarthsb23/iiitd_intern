set moduleName AutoCorrelation
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {AutoCorrelation}
set C_modelType { void 0 }
set C_modelArgList {
	{ rec_sig_re double 64 regular {array 200 { 1 1 } 1 1 }  }
	{ rec_sig_im double 64 regular {array 200 { 1 1 } 1 1 }  }
	{ matrix1_re double 64 regular {array 10000 { 2 3 } 1 1 }  }
	{ matrix1_im double 64 regular {array 10000 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rec_sig_re", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rec_sig_im", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "matrix1_re", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "matrix1_im", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rec_sig_re_address0 sc_out sc_lv 8 signal 0 } 
	{ rec_sig_re_ce0 sc_out sc_logic 1 signal 0 } 
	{ rec_sig_re_q0 sc_in sc_lv 64 signal 0 } 
	{ rec_sig_re_address1 sc_out sc_lv 8 signal 0 } 
	{ rec_sig_re_ce1 sc_out sc_logic 1 signal 0 } 
	{ rec_sig_re_q1 sc_in sc_lv 64 signal 0 } 
	{ rec_sig_im_address0 sc_out sc_lv 8 signal 1 } 
	{ rec_sig_im_ce0 sc_out sc_logic 1 signal 1 } 
	{ rec_sig_im_q0 sc_in sc_lv 64 signal 1 } 
	{ rec_sig_im_address1 sc_out sc_lv 8 signal 1 } 
	{ rec_sig_im_ce1 sc_out sc_logic 1 signal 1 } 
	{ rec_sig_im_q1 sc_in sc_lv 64 signal 1 } 
	{ matrix1_re_address0 sc_out sc_lv 14 signal 2 } 
	{ matrix1_re_ce0 sc_out sc_logic 1 signal 2 } 
	{ matrix1_re_we0 sc_out sc_logic 1 signal 2 } 
	{ matrix1_re_d0 sc_out sc_lv 64 signal 2 } 
	{ matrix1_re_q0 sc_in sc_lv 64 signal 2 } 
	{ matrix1_im_address0 sc_out sc_lv 14 signal 3 } 
	{ matrix1_im_ce0 sc_out sc_logic 1 signal 3 } 
	{ matrix1_im_we0 sc_out sc_logic 1 signal 3 } 
	{ matrix1_im_d0 sc_out sc_lv 64 signal 3 } 
	{ matrix1_im_q0 sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rec_sig_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rec_sig_re", "role": "address0" }} , 
 	{ "name": "rec_sig_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rec_sig_re", "role": "ce0" }} , 
 	{ "name": "rec_sig_re_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rec_sig_re", "role": "q0" }} , 
 	{ "name": "rec_sig_re_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rec_sig_re", "role": "address1" }} , 
 	{ "name": "rec_sig_re_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rec_sig_re", "role": "ce1" }} , 
 	{ "name": "rec_sig_re_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rec_sig_re", "role": "q1" }} , 
 	{ "name": "rec_sig_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rec_sig_im", "role": "address0" }} , 
 	{ "name": "rec_sig_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rec_sig_im", "role": "ce0" }} , 
 	{ "name": "rec_sig_im_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rec_sig_im", "role": "q0" }} , 
 	{ "name": "rec_sig_im_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rec_sig_im", "role": "address1" }} , 
 	{ "name": "rec_sig_im_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rec_sig_im", "role": "ce1" }} , 
 	{ "name": "rec_sig_im_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rec_sig_im", "role": "q1" }} , 
 	{ "name": "matrix1_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "matrix1_re", "role": "address0" }} , 
 	{ "name": "matrix1_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrix1_re", "role": "ce0" }} , 
 	{ "name": "matrix1_re_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrix1_re", "role": "we0" }} , 
 	{ "name": "matrix1_re_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matrix1_re", "role": "d0" }} , 
 	{ "name": "matrix1_re_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matrix1_re", "role": "q0" }} , 
 	{ "name": "matrix1_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "matrix1_im", "role": "address0" }} , 
 	{ "name": "matrix1_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrix1_im", "role": "ce0" }} , 
 	{ "name": "matrix1_im_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrix1_im", "role": "we0" }} , 
 	{ "name": "matrix1_im_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matrix1_im", "role": "d0" }} , 
 	{ "name": "matrix1_im_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "matrix1_im", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "AutoCorrelation",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16390805", "EstimateLatencyMax" : "16390805",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rec_sig_re", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "rec_sig_im", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "matrix1_re", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "matrix1_im", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dadddsubkb_U5", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dadd_64cud_U6", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U7", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U8", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U9", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U10", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_ddiv_64eOg_U11", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_ddiv_64eOg_U12", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	AutoCorrelation {
		rec_sig_re {Type I LastRead 5 FirstWrite -1}
		rec_sig_im {Type I LastRead 5 FirstWrite -1}
		matrix1_re {Type IO LastRead 14 FirstWrite 2}
		matrix1_im {Type IO LastRead 14 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16390805", "Max" : "16390805"}
	, {"Name" : "Interval", "Min" : "16390805", "Max" : "16390805"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rec_sig_re { ap_memory {  { rec_sig_re_address0 mem_address 1 8 }  { rec_sig_re_ce0 mem_ce 1 1 }  { rec_sig_re_q0 mem_dout 0 64 }  { rec_sig_re_address1 MemPortADDR2 1 8 }  { rec_sig_re_ce1 MemPortCE2 1 1 }  { rec_sig_re_q1 MemPortDOUT2 0 64 } } }
	rec_sig_im { ap_memory {  { rec_sig_im_address0 mem_address 1 8 }  { rec_sig_im_ce0 mem_ce 1 1 }  { rec_sig_im_q0 mem_dout 0 64 }  { rec_sig_im_address1 MemPortADDR2 1 8 }  { rec_sig_im_ce1 MemPortCE2 1 1 }  { rec_sig_im_q1 MemPortDOUT2 0 64 } } }
	matrix1_re { ap_memory {  { matrix1_re_address0 mem_address 1 14 }  { matrix1_re_ce0 mem_ce 1 1 }  { matrix1_re_we0 mem_we 1 1 }  { matrix1_re_d0 mem_din 1 64 }  { matrix1_re_q0 mem_dout 0 64 } } }
	matrix1_im { ap_memory {  { matrix1_im_address0 mem_address 1 14 }  { matrix1_im_ce0 mem_ce 1 1 }  { matrix1_im_we0 mem_we 1 1 }  { matrix1_im_d0 mem_din 1 64 }  { matrix1_im_q0 mem_dout 0 64 } } }
}
