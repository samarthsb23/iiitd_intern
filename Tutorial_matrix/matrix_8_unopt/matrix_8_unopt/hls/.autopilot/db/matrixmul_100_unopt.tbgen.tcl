set moduleName matrixmul_100_unopt
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 3
set C_modelName {matrixmul_100_unopt}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_A_V_data_V int 32 regular {axi_s 0 volatile  { in_A Data } }  }
	{ in_A_V_keep_V int 4 regular {axi_s 0 volatile  { in_A Keep } }  }
	{ in_A_V_strb_V int 4 regular {axi_s 0 volatile  { in_A Strb } }  }
	{ in_A_V_last_V int 1 regular {axi_s 0 volatile  { in_A Last } }  }
	{ out_C_V_data_V int 32 regular {axi_s 1 volatile  { out_C Data } }  }
	{ out_C_V_keep_V int 4 regular {axi_s 1 volatile  { out_C Keep } }  }
	{ out_C_V_strb_V int 4 regular {axi_s 1 volatile  { out_C Strb } }  }
	{ out_C_V_last_V int 1 regular {axi_s 1 volatile  { out_C Last } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_C_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_C_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_C_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_C_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_A_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_A_TVALID sc_in sc_logic 1 invld 3 } 
	{ in_A_TREADY sc_out sc_logic 1 inacc 3 } 
	{ in_A_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_A_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_A_TLAST sc_in sc_lv 1 signal 3 } 
	{ out_C_TDATA sc_out sc_lv 32 signal 4 } 
	{ out_C_TVALID sc_out sc_logic 1 outvld 7 } 
	{ out_C_TREADY sc_in sc_logic 1 outacc 7 } 
	{ out_C_TKEEP sc_out sc_lv 4 signal 5 } 
	{ out_C_TSTRB sc_out sc_lv 4 signal 6 } 
	{ out_C_TLAST sc_out sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_A_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_A_V_data_V", "role": "default" }} , 
 	{ "name": "in_A_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_A_V_last_V", "role": "default" }} , 
 	{ "name": "in_A_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_A_V_last_V", "role": "default" }} , 
 	{ "name": "in_A_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_A_V_keep_V", "role": "default" }} , 
 	{ "name": "in_A_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_A_V_strb_V", "role": "default" }} , 
 	{ "name": "in_A_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_A_V_last_V", "role": "default" }} , 
 	{ "name": "out_C_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_C_V_data_V", "role": "default" }} , 
 	{ "name": "out_C_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_C_V_last_V", "role": "default" }} , 
 	{ "name": "out_C_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_C_V_last_V", "role": "default" }} , 
 	{ "name": "out_C_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_C_V_keep_V", "role": "default" }} , 
 	{ "name": "out_C_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_C_V_strb_V", "role": "default" }} , 
 	{ "name": "out_C_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_C_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "matrixmul_100_unopt",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3111204", "EstimateLatencyMax" : "3111204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_A_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A",
				"BlockSignal" : [
					{"Name" : "in_A_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_A_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A"},
			{"Name" : "in_A_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A"},
			{"Name" : "in_A_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A"},
			{"Name" : "out_C_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_C",
				"BlockSignal" : [
					{"Name" : "out_C_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_C_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_C"},
			{"Name" : "out_C_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_C"},
			{"Name" : "out_C_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_C"}],
		"Loop" : [
			{"Name" : "loop_input_A2", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state5"]}},
			{"Name" : "loop_input_A1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_input_B2", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp1_stage0", "FirstStateIter" : "ap_enable_reg_pp1_iter0", "FirstStateBlock" : "ap_block_pp1_stage0_subdone", "LastState" : "ap_ST_fsm_pp1_stage0", "LastStateIter" : "ap_enable_reg_pp1_iter1", "LastStateBlock" : "ap_block_pp1_stage0_subdone", "PreState" : ["ap_ST_fsm_state6"], "QuitState" : "ap_ST_fsm_pp1_stage0", "QuitStateIter" : "ap_enable_reg_pp1_iter1", "QuitStateBlock" : "ap_block_pp1_stage0_subdone", "PostState" : ["ap_ST_fsm_state9"]}},
			{"Name" : "loop_input_B1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp2_stage0", "FirstStateIter" : "ap_enable_reg_pp2_iter0", "FirstStateBlock" : "ap_block_pp2_stage0_subdone", "LastState" : "ap_ST_fsm_pp2_stage2", "LastStateIter" : "ap_enable_reg_pp2_iter2", "LastStateBlock" : "ap_block_pp2_stage2_subdone", "PreState" : ["ap_ST_fsm_state11"], "QuitState" : "ap_ST_fsm_pp2_stage2", "QuitStateIter" : "ap_enable_reg_pp2_iter2", "QuitStateBlock" : "ap_block_pp2_stage2_subdone", "PostState" : ["ap_ST_fsm_state21"]}},
			{"Name" : "loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state22"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_output_C2", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp3_stage0", "FirstStateIter" : "ap_enable_reg_pp3_iter0", "FirstStateBlock" : "ap_block_pp3_stage0_subdone", "LastState" : "ap_ST_fsm_pp3_stage0", "LastStateIter" : "ap_enable_reg_pp3_iter2", "LastStateBlock" : "ap_block_pp3_stage0_subdone", "PreState" : ["ap_ST_fsm_state22"], "QuitState" : "ap_ST_fsm_pp3_stage0", "QuitStateIter" : "ap_enable_reg_pp3_iter2", "QuitStateBlock" : "ap_block_pp3_stage0_subdone", "PostState" : ["ap_ST_fsm_state26"]}},
			{"Name" : "loop_output_C1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state26"], "QuitState" : ["ap_ST_fsm_state22"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_B_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_C_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_A_V_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_A_V_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_A_V_strb_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_A_V_last_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_C_V_data_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_C_V_keep_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_C_V_strb_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_C_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_100_unopt {
		in_A_V_data_V {Type I LastRead 4 FirstWrite -1}
		in_A_V_keep_V {Type I LastRead 4 FirstWrite -1}
		in_A_V_strb_V {Type I LastRead 4 FirstWrite -1}
		in_A_V_last_V {Type I LastRead 4 FirstWrite -1}
		out_C_V_data_V {Type O LastRead -1 FirstWrite 6}
		out_C_V_keep_V {Type O LastRead -1 FirstWrite 6}
		out_C_V_strb_V {Type O LastRead -1 FirstWrite 6}
		out_C_V_last_V {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3111204", "Max" : "3111204"}
	, {"Name" : "Interval", "Min" : "3111205", "Max" : "3111205"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	in_A_V_data_V { axis {  { in_A_TDATA in_data 0 32 } } }
	in_A_V_keep_V { axis {  { in_A_TKEEP in_data 0 4 } } }
	in_A_V_strb_V { axis {  { in_A_TSTRB in_data 0 4 } } }
	in_A_V_last_V { axis {  { in_A_TVALID in_vld 0 1 }  { in_A_TREADY in_acc 1 1 }  { in_A_TLAST in_data 0 1 } } }
	out_C_V_data_V { axis {  { out_C_TDATA out_data 1 32 } } }
	out_C_V_keep_V { axis {  { out_C_TKEEP out_data 1 4 } } }
	out_C_V_strb_V { axis {  { out_C_TSTRB out_data 1 4 } } }
	out_C_V_last_V { axis {  { out_C_TVALID out_vld 1 1 }  { out_C_TREADY out_acc 0 1 }  { out_C_TLAST out_data 1 1 } } }
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
