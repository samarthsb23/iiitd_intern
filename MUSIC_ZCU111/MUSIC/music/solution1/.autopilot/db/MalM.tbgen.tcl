set moduleName MalM
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
set C_modelName {MalM}
set C_modelType { void 0 }
set C_modelArgList {
	{ A_re double 64 regular {array 10000 { 1 1 } 1 1 }  }
	{ A_re_offset int 7 regular  }
	{ A_im double 64 regular {array 10000 { 1 1 } 1 1 }  }
	{ A_im_offset int 7 regular  }
	{ B_re_offset int 32 regular  }
	{ B_im_offset int 32 regular  }
	{ cos_theta_re double 64 regular  }
	{ cos_theta_im double 64 regular  }
	{ sin_theta_re double 64 regular  }
	{ sin_theta_im double 64 regular  }
	{ C_re double 64 regular {array 100 { 0 3 } 0 1 }  }
	{ C_im double 64 regular {array 100 { 0 3 } 0 1 }  }
	{ D_re double 64 regular {array 100 { 0 3 } 0 1 }  }
	{ D_im double 64 regular {array 100 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_re", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "A_re_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "A_im", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "A_im_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "B_re_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_im_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cos_theta_re", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "cos_theta_im", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sin_theta_re", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sin_theta_im", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C_re", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_im", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_re", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_im", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_re_address0 sc_out sc_lv 14 signal 0 } 
	{ A_re_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_re_q0 sc_in sc_lv 64 signal 0 } 
	{ A_re_address1 sc_out sc_lv 14 signal 0 } 
	{ A_re_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_re_q1 sc_in sc_lv 64 signal 0 } 
	{ A_re_offset sc_in sc_lv 7 signal 1 } 
	{ A_im_address0 sc_out sc_lv 14 signal 2 } 
	{ A_im_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_im_q0 sc_in sc_lv 64 signal 2 } 
	{ A_im_address1 sc_out sc_lv 14 signal 2 } 
	{ A_im_ce1 sc_out sc_logic 1 signal 2 } 
	{ A_im_q1 sc_in sc_lv 64 signal 2 } 
	{ A_im_offset sc_in sc_lv 7 signal 3 } 
	{ B_re_offset sc_in sc_lv 32 signal 4 } 
	{ B_im_offset sc_in sc_lv 32 signal 5 } 
	{ cos_theta_re sc_in sc_lv 64 signal 6 } 
	{ cos_theta_im sc_in sc_lv 64 signal 7 } 
	{ sin_theta_re sc_in sc_lv 64 signal 8 } 
	{ sin_theta_im sc_in sc_lv 64 signal 9 } 
	{ C_re_address0 sc_out sc_lv 7 signal 10 } 
	{ C_re_ce0 sc_out sc_logic 1 signal 10 } 
	{ C_re_we0 sc_out sc_logic 1 signal 10 } 
	{ C_re_d0 sc_out sc_lv 64 signal 10 } 
	{ C_im_address0 sc_out sc_lv 7 signal 11 } 
	{ C_im_ce0 sc_out sc_logic 1 signal 11 } 
	{ C_im_we0 sc_out sc_logic 1 signal 11 } 
	{ C_im_d0 sc_out sc_lv 64 signal 11 } 
	{ D_re_address0 sc_out sc_lv 7 signal 12 } 
	{ D_re_ce0 sc_out sc_logic 1 signal 12 } 
	{ D_re_we0 sc_out sc_logic 1 signal 12 } 
	{ D_re_d0 sc_out sc_lv 64 signal 12 } 
	{ D_im_address0 sc_out sc_lv 7 signal 13 } 
	{ D_im_ce0 sc_out sc_logic 1 signal 13 } 
	{ D_im_we0 sc_out sc_logic 1 signal 13 } 
	{ D_im_d0 sc_out sc_lv 64 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "A_re", "role": "address0" }} , 
 	{ "name": "A_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_re", "role": "ce0" }} , 
 	{ "name": "A_re_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_re", "role": "q0" }} , 
 	{ "name": "A_re_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "A_re", "role": "address1" }} , 
 	{ "name": "A_re_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_re", "role": "ce1" }} , 
 	{ "name": "A_re_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_re", "role": "q1" }} , 
 	{ "name": "A_re_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "A_re_offset", "role": "default" }} , 
 	{ "name": "A_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "A_im", "role": "address0" }} , 
 	{ "name": "A_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_im", "role": "ce0" }} , 
 	{ "name": "A_im_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_im", "role": "q0" }} , 
 	{ "name": "A_im_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "A_im", "role": "address1" }} , 
 	{ "name": "A_im_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_im", "role": "ce1" }} , 
 	{ "name": "A_im_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_im", "role": "q1" }} , 
 	{ "name": "A_im_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "A_im_offset", "role": "default" }} , 
 	{ "name": "B_re_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_re_offset", "role": "default" }} , 
 	{ "name": "B_im_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_im_offset", "role": "default" }} , 
 	{ "name": "cos_theta_re", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cos_theta_re", "role": "default" }} , 
 	{ "name": "cos_theta_im", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cos_theta_im", "role": "default" }} , 
 	{ "name": "sin_theta_re", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sin_theta_re", "role": "default" }} , 
 	{ "name": "sin_theta_im", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sin_theta_im", "role": "default" }} , 
 	{ "name": "C_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "C_re", "role": "address0" }} , 
 	{ "name": "C_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_re", "role": "ce0" }} , 
 	{ "name": "C_re_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_re", "role": "we0" }} , 
 	{ "name": "C_re_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C_re", "role": "d0" }} , 
 	{ "name": "C_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "C_im", "role": "address0" }} , 
 	{ "name": "C_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_im", "role": "ce0" }} , 
 	{ "name": "C_im_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_im", "role": "we0" }} , 
 	{ "name": "C_im_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C_im", "role": "d0" }} , 
 	{ "name": "D_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "D_re", "role": "address0" }} , 
 	{ "name": "D_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_re", "role": "ce0" }} , 
 	{ "name": "D_re_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_re", "role": "we0" }} , 
 	{ "name": "D_re_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "D_re", "role": "d0" }} , 
 	{ "name": "D_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "D_im", "role": "address0" }} , 
 	{ "name": "D_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_im", "role": "ce0" }} , 
 	{ "name": "D_im_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_im", "role": "we0" }} , 
 	{ "name": "D_im_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "D_im", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "MalM",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1601", "EstimateLatencyMax" : "1601",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_re_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_im_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_re_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_im_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "cos_theta_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "cos_theta_im", "Type" : "None", "Direction" : "I"},
			{"Name" : "sin_theta_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "sin_theta_im", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_re", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_im", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_re", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_im", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dadddsubkb_U21", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dadd_64cud_U22", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dadddsubkb_U23", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dadd_64cud_U24", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dsub_64fYi_U25", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dadd_64cud_U26", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dsub_64fYi_U27", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dadd_64cud_U28", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U29", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U30", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U31", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U32", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U33", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U34", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U35", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U36", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U37", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U38", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U39", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U40", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U41", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U42", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U43", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_dmul_64dEe_U44", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_mul_mulg8j_U45", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MUSIC_top_mul_mulg8j_U46", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MalM {
		A_re {Type I LastRead 2 FirstWrite -1}
		A_re_offset {Type I LastRead 0 FirstWrite -1}
		A_im {Type I LastRead 2 FirstWrite -1}
		A_im_offset {Type I LastRead 0 FirstWrite -1}
		B_re_offset {Type I LastRead 0 FirstWrite -1}
		B_im_offset {Type I LastRead 0 FirstWrite -1}
		cos_theta_re {Type I LastRead 0 FirstWrite -1}
		cos_theta_im {Type I LastRead 0 FirstWrite -1}
		sin_theta_re {Type I LastRead 0 FirstWrite -1}
		sin_theta_im {Type I LastRead 0 FirstWrite -1}
		C_re {Type O LastRead -1 FirstWrite 16}
		C_im {Type O LastRead -1 FirstWrite 16}
		D_re {Type O LastRead -1 FirstWrite 16}
		D_im {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1601", "Max" : "1601"}
	, {"Name" : "Interval", "Min" : "1601", "Max" : "1601"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_re { ap_memory {  { A_re_address0 mem_address 1 14 }  { A_re_ce0 mem_ce 1 1 }  { A_re_q0 mem_dout 0 64 }  { A_re_address1 MemPortADDR2 1 14 }  { A_re_ce1 MemPortCE2 1 1 }  { A_re_q1 MemPortDOUT2 0 64 } } }
	A_re_offset { ap_none {  { A_re_offset in_data 0 7 } } }
	A_im { ap_memory {  { A_im_address0 mem_address 1 14 }  { A_im_ce0 mem_ce 1 1 }  { A_im_q0 mem_dout 0 64 }  { A_im_address1 MemPortADDR2 1 14 }  { A_im_ce1 MemPortCE2 1 1 }  { A_im_q1 MemPortDOUT2 0 64 } } }
	A_im_offset { ap_none {  { A_im_offset in_data 0 7 } } }
	B_re_offset { ap_none {  { B_re_offset in_data 0 32 } } }
	B_im_offset { ap_none {  { B_im_offset in_data 0 32 } } }
	cos_theta_re { ap_none {  { cos_theta_re in_data 0 64 } } }
	cos_theta_im { ap_none {  { cos_theta_im in_data 0 64 } } }
	sin_theta_re { ap_none {  { sin_theta_re in_data 0 64 } } }
	sin_theta_im { ap_none {  { sin_theta_im in_data 0 64 } } }
	C_re { ap_memory {  { C_re_address0 mem_address 1 7 }  { C_re_ce0 mem_ce 1 1 }  { C_re_we0 mem_we 1 1 }  { C_re_d0 mem_din 1 64 } } }
	C_im { ap_memory {  { C_im_address0 mem_address 1 7 }  { C_im_ce0 mem_ce 1 1 }  { C_im_we0 mem_we 1 1 }  { C_im_d0 mem_din 1 64 } } }
	D_re { ap_memory {  { D_re_address0 mem_address 1 7 }  { D_re_ce0 mem_ce 1 1 }  { D_re_we0 mem_we 1 1 }  { D_re_d0 mem_din 1 64 } } }
	D_im { ap_memory {  { D_im_address0 mem_address 1 7 }  { D_im_ce0 mem_ce 1 1 }  { D_im_we0 mem_we 1 1 }  { D_im_d0 mem_din 1 64 } } }
}
