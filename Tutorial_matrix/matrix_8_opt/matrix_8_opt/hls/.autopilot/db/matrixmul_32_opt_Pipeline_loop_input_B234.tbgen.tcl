set moduleName matrixmul_32_opt_Pipeline_loop_input_B234
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
set C_modelName {matrixmul_32_opt_Pipeline_loop_input_B234}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_B_3 { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ input_B_3 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ in_A_V_data_V int 32 regular {axi_s 0 volatile  { in_A Data } }  }
	{ in_A_V_keep_V int 4 regular {axi_s 0 volatile  { in_A Keep } }  }
	{ in_A_V_strb_V int 4 regular {axi_s 0 volatile  { in_A Strb } }  }
	{ in_A_V_last_V int 1 regular {axi_s 0 volatile  { in_A Last } }  }
	{ empty_190 int 32 regular {pointer 2}  }
	{ empty_191 int 4 regular {pointer 1}  }
	{ empty_192 int 4 regular {pointer 1}  }
	{ empty int 1 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_B_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_190", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_191", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_192", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_A_TVALID sc_in sc_logic 1 invld 1 } 
	{ input_B_3_address0 sc_out sc_lv 5 signal 0 } 
	{ input_B_3_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_B_3_we0 sc_out sc_logic 1 signal 0 } 
	{ input_B_3_d0 sc_out sc_lv 32 signal 0 } 
	{ in_A_TDATA sc_in sc_lv 32 signal 1 } 
	{ in_A_TREADY sc_out sc_logic 1 inacc 4 } 
	{ in_A_TKEEP sc_in sc_lv 4 signal 2 } 
	{ in_A_TSTRB sc_in sc_lv 4 signal 3 } 
	{ in_A_TLAST sc_in sc_lv 1 signal 4 } 
	{ empty_190_i sc_in sc_lv 32 signal 5 } 
	{ empty_190_o sc_out sc_lv 32 signal 5 } 
	{ empty_190_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ empty_191 sc_out sc_lv 4 signal 6 } 
	{ empty_191_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ empty_192 sc_out sc_lv 4 signal 7 } 
	{ empty_192_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ empty sc_out sc_lv 1 signal 8 } 
	{ empty_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_A_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_A_V_data_V", "role": "default" }} , 
 	{ "name": "input_B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_B_3", "role": "address0" }} , 
 	{ "name": "input_B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_B_3", "role": "ce0" }} , 
 	{ "name": "input_B_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_B_3", "role": "we0" }} , 
 	{ "name": "input_B_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_B_3", "role": "d0" }} , 
 	{ "name": "in_A_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_A_V_data_V", "role": "default" }} , 
 	{ "name": "in_A_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_A_V_last_V", "role": "default" }} , 
 	{ "name": "in_A_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_A_V_keep_V", "role": "default" }} , 
 	{ "name": "in_A_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_A_V_strb_V", "role": "default" }} , 
 	{ "name": "in_A_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_A_V_last_V", "role": "default" }} , 
 	{ "name": "empty_190_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_190", "role": "i" }} , 
 	{ "name": "empty_190_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_190", "role": "o" }} , 
 	{ "name": "empty_190_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_190", "role": "o_ap_vld" }} , 
 	{ "name": "empty_191", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_191", "role": "default" }} , 
 	{ "name": "empty_191_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_191", "role": "ap_vld" }} , 
 	{ "name": "empty_192", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_192", "role": "default" }} , 
 	{ "name": "empty_192_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_192", "role": "ap_vld" }} , 
 	{ "name": "empty", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "empty_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrixmul_32_opt_Pipeline_loop_input_B234",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_A_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A",
				"BlockSignal" : [
					{"Name" : "in_A_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_A_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A"},
			{"Name" : "in_A_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A"},
			{"Name" : "in_A_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A"},
			{"Name" : "empty_190", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_191", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty_192", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_input_B2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_32_opt_Pipeline_loop_input_B234 {
		input_B_3 {Type O LastRead -1 FirstWrite 1}
		in_A_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_last_V {Type I LastRead 1 FirstWrite -1}
		empty_190 {Type IO LastRead 1 FirstWrite 1}
		empty_191 {Type O LastRead -1 FirstWrite 1}
		empty_192 {Type O LastRead -1 FirstWrite 1}
		empty {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_B_3 { ap_memory {  { input_B_3_address0 mem_address 1 5 }  { input_B_3_ce0 mem_ce 1 1 }  { input_B_3_we0 mem_we 1 1 }  { input_B_3_d0 mem_din 1 32 } } }
	in_A_V_data_V { axis {  { in_A_TVALID in_vld 0 1 }  { in_A_TDATA in_data 0 32 } } }
	in_A_V_keep_V { axis {  { in_A_TKEEP in_data 0 4 } } }
	in_A_V_strb_V { axis {  { in_A_TSTRB in_data 0 4 } } }
	in_A_V_last_V { axis {  { in_A_TREADY in_acc 1 1 }  { in_A_TLAST in_data 0 1 } } }
	empty_190 { ap_ovld {  { empty_190_i in_data 0 32 }  { empty_190_o out_data 1 32 }  { empty_190_o_ap_vld out_vld 1 1 } } }
	empty_191 { ap_vld {  { empty_191 out_data 1 4 }  { empty_191_ap_vld out_vld 1 1 } } }
	empty_192 { ap_vld {  { empty_192 out_data 1 4 }  { empty_192_ap_vld out_vld 1 1 } } }
	empty { ap_vld {  { empty out_data 1 1 }  { empty_ap_vld out_vld 1 1 } } }
}
