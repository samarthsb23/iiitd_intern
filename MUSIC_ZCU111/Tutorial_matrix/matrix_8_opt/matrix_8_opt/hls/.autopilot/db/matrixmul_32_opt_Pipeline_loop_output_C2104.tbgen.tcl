set moduleName matrixmul_32_opt_Pipeline_loop_output_C2104
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 131
set C_modelName {matrixmul_32_opt_Pipeline_loop_output_C2104}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict output_C_11 { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ output_C_11 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ empty_88 int 32 regular {pointer 2}  }
	{ empty_89 int 4 regular {pointer 2}  }
	{ empty_90 int 1 regular {pointer 2}  }
	{ out_C_V_data_V int 32 regular {axi_s 1 volatile  { out_C Data } }  }
	{ out_C_V_keep_V int 4 regular {axi_s 1 volatile  { out_C Keep } }  }
	{ out_C_V_strb_V int 4 regular {axi_s 1 volatile  { out_C Strb } }  }
	{ out_C_V_last_V int 1 regular {axi_s 1 volatile  { out_C Last } }  }
	{ empty int 4 regular {pointer 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "output_C_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_88", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_89", "interface" : "wire", "bitwidth" : 4, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_90", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "out_C_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_C_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_C_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_C_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_C_TREADY sc_in sc_logic 1 outacc 4 } 
	{ output_C_11_address0 sc_out sc_lv 5 signal 0 } 
	{ output_C_11_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_C_11_q0 sc_in sc_lv 32 signal 0 } 
	{ empty_88_i sc_in sc_lv 32 signal 1 } 
	{ empty_88_o sc_out sc_lv 32 signal 1 } 
	{ empty_88_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ empty_89_i sc_in sc_lv 4 signal 2 } 
	{ empty_89_o sc_out sc_lv 4 signal 2 } 
	{ empty_89_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ empty_90_i sc_in sc_lv 1 signal 3 } 
	{ empty_90_o sc_out sc_lv 1 signal 3 } 
	{ empty_90_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ out_C_TDATA sc_out sc_lv 32 signal 4 } 
	{ out_C_TVALID sc_out sc_logic 1 outvld 7 } 
	{ out_C_TKEEP sc_out sc_lv 4 signal 5 } 
	{ out_C_TSTRB sc_out sc_lv 4 signal 6 } 
	{ out_C_TLAST sc_out sc_lv 1 signal 7 } 
	{ empty sc_in sc_lv 4 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_C_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_C_V_data_V", "role": "default" }} , 
 	{ "name": "output_C_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_C_11", "role": "address0" }} , 
 	{ "name": "output_C_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_C_11", "role": "ce0" }} , 
 	{ "name": "output_C_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_C_11", "role": "q0" }} , 
 	{ "name": "empty_88_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_88", "role": "i" }} , 
 	{ "name": "empty_88_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_88", "role": "o" }} , 
 	{ "name": "empty_88_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_88", "role": "o_ap_vld" }} , 
 	{ "name": "empty_89_i", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_89", "role": "i" }} , 
 	{ "name": "empty_89_o", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_89", "role": "o" }} , 
 	{ "name": "empty_89_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_89", "role": "o_ap_vld" }} , 
 	{ "name": "empty_90_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_90", "role": "i" }} , 
 	{ "name": "empty_90_o", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_90", "role": "o" }} , 
 	{ "name": "empty_90_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_90", "role": "o_ap_vld" }} , 
 	{ "name": "out_C_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_C_V_data_V", "role": "default" }} , 
 	{ "name": "out_C_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_C_V_last_V", "role": "default" }} , 
 	{ "name": "out_C_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_C_V_keep_V", "role": "default" }} , 
 	{ "name": "out_C_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_C_V_strb_V", "role": "default" }} , 
 	{ "name": "out_C_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_C_V_last_V", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrixmul_32_opt_Pipeline_loop_output_C2104",
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
			{"Name" : "output_C_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "out_C_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_C",
				"BlockSignal" : [
					{"Name" : "out_C_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_C_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_C"},
			{"Name" : "out_C_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_C"},
			{"Name" : "out_C_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_C"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_output_C2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_32_opt_Pipeline_loop_output_C2104 {
		output_C_11 {Type I LastRead 0 FirstWrite -1}
		empty_88 {Type IO LastRead 2 FirstWrite 1}
		empty_89 {Type IO LastRead 2 FirstWrite 1}
		empty_90 {Type IO LastRead 2 FirstWrite 1}
		out_C_V_data_V {Type O LastRead -1 FirstWrite 2}
		out_C_V_keep_V {Type O LastRead -1 FirstWrite 2}
		out_C_V_strb_V {Type O LastRead -1 FirstWrite 2}
		out_C_V_last_V {Type O LastRead -1 FirstWrite 2}
		empty {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "35", "Max" : "35"}
	, {"Name" : "Interval", "Min" : "35", "Max" : "35"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_C_11 { ap_memory {  { output_C_11_address0 mem_address 1 5 }  { output_C_11_ce0 mem_ce 1 1 }  { output_C_11_q0 mem_dout 0 32 } } }
	empty_88 { ap_ovld {  { empty_88_i in_data 0 32 }  { empty_88_o out_data 1 32 }  { empty_88_o_ap_vld out_vld 1 1 } } }
	empty_89 { ap_ovld {  { empty_89_i in_data 0 4 }  { empty_89_o out_data 1 4 }  { empty_89_o_ap_vld out_vld 1 1 } } }
	empty_90 { ap_ovld {  { empty_90_i in_data 0 1 }  { empty_90_o out_data 1 1 }  { empty_90_o_ap_vld out_vld 1 1 } } }
	out_C_V_data_V { axis {  { out_C_TREADY out_acc 0 1 }  { out_C_TDATA out_data 1 32 } } }
	out_C_V_keep_V { axis {  { out_C_TKEEP out_data 1 4 } } }
	out_C_V_strb_V { axis {  { out_C_TSTRB out_data 1 4 } } }
	out_C_V_last_V { axis {  { out_C_TVALID out_vld 1 1 }  { out_C_TLAST out_data 1 1 } } }
	empty { ap_none {  { empty in_data 0 4 } } }
}
