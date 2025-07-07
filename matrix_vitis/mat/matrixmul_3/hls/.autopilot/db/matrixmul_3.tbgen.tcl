set moduleName matrixmul_3
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
set cdfgNum 7
set C_modelName {matrixmul_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_A int 64 regular {axi_s 0 volatile  { in_A Data } }  }
	{ out_C int 64 regular {axi_s 1 volatile  { out_C Data } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_A", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_C", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_A_TDATA sc_in sc_lv 64 signal 0 } 
	{ in_A_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_A_TREADY sc_out sc_logic 1 inacc 0 } 
	{ out_C_TDATA sc_out sc_lv 64 signal 1 } 
	{ out_C_TVALID sc_out sc_logic 1 outvld 1 } 
	{ out_C_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_A_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_A", "role": "TDATA" }} , 
 	{ "name": "in_A_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_A", "role": "TVALID" }} , 
 	{ "name": "in_A_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_A", "role": "TREADY" }} , 
 	{ "name": "out_C_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_C", "role": "TDATA" }} , 
 	{ "name": "out_C_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_C", "role": "TVALID" }} , 
 	{ "name": "out_C_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_C", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "20", "22", "32", "34", "35"],
		"CDFG" : "matrixmul_3",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "281", "EstimateLatencyMax" : "281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_A", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_matrixmul_3_Pipeline_loop_input_A1_loop_input_A2_fu_104", "Port" : "in_A", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "20", "SubInstance" : "grp_matrixmul_3_Pipeline_loop_input_B1_loop_input_B2_fu_118", "Port" : "in_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out_C", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_matrixmul_3_Pipeline_loop_output_C1_loop_output_C2_fu_153", "Port" : "out_C", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_A_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_A_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_A_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_A_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_A_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_A_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_A_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_B_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_B_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_B_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_B_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_B_4_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_B_5_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_B_6_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_B_7_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_C_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop_input_A1_loop_input_A2_fu_104", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "matrixmul_3_Pipeline_loop_input_A1_loop_input_A2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_A_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_A_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_A_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_A_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_A", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_A_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_input_A1_loop_input_A2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop_input_A1_loop_input_A2_fu_104.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop_input_B1_loop_input_B2_fu_118", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "matrixmul_3_Pipeline_loop_input_B1_loop_input_B2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_B_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_B_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_B_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_B_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_B_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_B_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_A", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_A_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_input_B1_loop_input_B2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop_input_B1_loop_input_B2_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop1_loop2_fu_132", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27", "28", "29", "30", "31"],
		"CDFG" : "matrixmul_3_Pipeline_loop1_loop2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_A_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_B_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop1_loop2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop1_loop2_fu_132.mul_32s_32s_32_2_1_U19", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop1_loop2_fu_132.mul_32s_32s_32_2_1_U20", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop1_loop2_fu_132.mul_32s_32s_32_2_1_U21", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop1_loop2_fu_132.mul_32s_32s_32_2_1_U22", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop1_loop2_fu_132.mul_32s_32s_32_2_1_U23", "Parent" : "22"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop1_loop2_fu_132.mul_32s_32s_32_2_1_U24", "Parent" : "22"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop1_loop2_fu_132.mul_32s_32s_32_2_1_U25", "Parent" : "22"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop1_loop2_fu_132.mul_32s_32s_32_2_1_U26", "Parent" : "22"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop1_loop2_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop_output_C1_loop_output_C2_fu_153", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "matrixmul_3_Pipeline_loop_output_C1_loop_output_C2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_C", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_C_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_output_C1_loop_output_C2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrixmul_3_Pipeline_loop_output_C1_loop_output_C2_fu_153.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_A_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_C_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_3 {
		in_A {Type I LastRead 1 FirstWrite -1}
		out_C {Type O LastRead -1 FirstWrite 3}}
	matrixmul_3_Pipeline_loop_input_A1_loop_input_A2 {
		input_A {Type O LastRead -1 FirstWrite 1}
		input_A_1 {Type O LastRead -1 FirstWrite 1}
		input_A_2 {Type O LastRead -1 FirstWrite 1}
		input_A_3 {Type O LastRead -1 FirstWrite 1}
		input_A_4 {Type O LastRead -1 FirstWrite 1}
		input_A_5 {Type O LastRead -1 FirstWrite 1}
		input_A_6 {Type O LastRead -1 FirstWrite 1}
		input_A_7 {Type O LastRead -1 FirstWrite 1}
		in_A {Type I LastRead 1 FirstWrite -1}}
	matrixmul_3_Pipeline_loop_input_B1_loop_input_B2 {
		input_B_7 {Type O LastRead -1 FirstWrite 1}
		input_B_6 {Type O LastRead -1 FirstWrite 1}
		input_B_5 {Type O LastRead -1 FirstWrite 1}
		input_B_4 {Type O LastRead -1 FirstWrite 1}
		input_B_3 {Type O LastRead -1 FirstWrite 1}
		input_B_2 {Type O LastRead -1 FirstWrite 1}
		input_B_1 {Type O LastRead -1 FirstWrite 1}
		input_B {Type O LastRead -1 FirstWrite 1}
		in_A {Type I LastRead 1 FirstWrite -1}}
	matrixmul_3_Pipeline_loop1_loop2 {
		input_A {Type I LastRead 2 FirstWrite -1}
		input_A_1 {Type I LastRead 2 FirstWrite -1}
		input_A_2 {Type I LastRead 2 FirstWrite -1}
		input_A_3 {Type I LastRead 2 FirstWrite -1}
		input_A_4 {Type I LastRead 1 FirstWrite -1}
		input_A_5 {Type I LastRead 1 FirstWrite -1}
		input_A_6 {Type I LastRead 1 FirstWrite -1}
		input_A_7 {Type I LastRead 1 FirstWrite -1}
		output_C {Type O LastRead -1 FirstWrite 7}
		input_B {Type I LastRead 2 FirstWrite -1}
		input_B_1 {Type I LastRead 2 FirstWrite -1}
		input_B_2 {Type I LastRead 2 FirstWrite -1}
		input_B_3 {Type I LastRead 2 FirstWrite -1}
		input_B_4 {Type I LastRead 1 FirstWrite -1}
		input_B_5 {Type I LastRead 1 FirstWrite -1}
		input_B_6 {Type I LastRead 1 FirstWrite -1}
		input_B_7 {Type I LastRead 1 FirstWrite -1}}
	matrixmul_3_Pipeline_loop_output_C1_loop_output_C2 {
		output_C {Type I LastRead 2 FirstWrite -1}
		out_C {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "281", "Max" : "281"}
	, {"Name" : "Interval", "Min" : "282", "Max" : "282"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_A { axis {  { in_A_TDATA in_data 0 64 }  { in_A_TVALID in_vld 0 1 }  { in_A_TREADY in_acc 1 1 } } }
	out_C { axis {  { out_C_TDATA out_data 1 64 }  { out_C_TVALID out_vld 1 1 }  { out_C_TREADY out_acc 0 1 } } }
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
