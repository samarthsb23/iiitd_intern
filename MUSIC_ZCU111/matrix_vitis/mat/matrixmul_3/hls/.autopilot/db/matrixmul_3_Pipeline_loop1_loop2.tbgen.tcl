set moduleName matrixmul_3_Pipeline_loop1_loop2
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
set cdfgNum 7
set C_modelName {matrixmul_3_Pipeline_loop1_loop2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_A { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_A_1 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_A_2 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_A_3 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_A_4 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_A_5 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_A_6 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_A_7 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_C { MEM_WIDTH 32 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict input_B { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_B_1 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_B_2 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_B_3 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_B_4 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_B_5 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_B_6 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_B_7 { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ input_A int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_A_1 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_A_2 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_A_3 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_A_4 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_A_5 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_A_6 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_A_7 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ output_C int 32 regular {array 64 { 0 3 } 0 1 }  }
	{ input_B int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_B_1 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_B_2 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_B_3 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_B_4 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_B_5 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_B_6 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ input_B_7 int 32 regular {array 8 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_A_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_A_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_A_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_A_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_C", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_B_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_B_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_B_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_B_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_B_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_B_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_A_address0 sc_out sc_lv 3 signal 0 } 
	{ input_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_A_q0 sc_in sc_lv 32 signal 0 } 
	{ input_A_1_address0 sc_out sc_lv 3 signal 1 } 
	{ input_A_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_A_1_q0 sc_in sc_lv 32 signal 1 } 
	{ input_A_2_address0 sc_out sc_lv 3 signal 2 } 
	{ input_A_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_A_2_q0 sc_in sc_lv 32 signal 2 } 
	{ input_A_3_address0 sc_out sc_lv 3 signal 3 } 
	{ input_A_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_A_3_q0 sc_in sc_lv 32 signal 3 } 
	{ input_A_4_address0 sc_out sc_lv 3 signal 4 } 
	{ input_A_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_A_4_q0 sc_in sc_lv 32 signal 4 } 
	{ input_A_5_address0 sc_out sc_lv 3 signal 5 } 
	{ input_A_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ input_A_5_q0 sc_in sc_lv 32 signal 5 } 
	{ input_A_6_address0 sc_out sc_lv 3 signal 6 } 
	{ input_A_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_A_6_q0 sc_in sc_lv 32 signal 6 } 
	{ input_A_7_address0 sc_out sc_lv 3 signal 7 } 
	{ input_A_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_A_7_q0 sc_in sc_lv 32 signal 7 } 
	{ output_C_address0 sc_out sc_lv 6 signal 8 } 
	{ output_C_ce0 sc_out sc_logic 1 signal 8 } 
	{ output_C_we0 sc_out sc_logic 1 signal 8 } 
	{ output_C_d0 sc_out sc_lv 32 signal 8 } 
	{ input_B_address0 sc_out sc_lv 3 signal 9 } 
	{ input_B_ce0 sc_out sc_logic 1 signal 9 } 
	{ input_B_q0 sc_in sc_lv 32 signal 9 } 
	{ input_B_1_address0 sc_out sc_lv 3 signal 10 } 
	{ input_B_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ input_B_1_q0 sc_in sc_lv 32 signal 10 } 
	{ input_B_2_address0 sc_out sc_lv 3 signal 11 } 
	{ input_B_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ input_B_2_q0 sc_in sc_lv 32 signal 11 } 
	{ input_B_3_address0 sc_out sc_lv 3 signal 12 } 
	{ input_B_3_ce0 sc_out sc_logic 1 signal 12 } 
	{ input_B_3_q0 sc_in sc_lv 32 signal 12 } 
	{ input_B_4_address0 sc_out sc_lv 3 signal 13 } 
	{ input_B_4_ce0 sc_out sc_logic 1 signal 13 } 
	{ input_B_4_q0 sc_in sc_lv 32 signal 13 } 
	{ input_B_5_address0 sc_out sc_lv 3 signal 14 } 
	{ input_B_5_ce0 sc_out sc_logic 1 signal 14 } 
	{ input_B_5_q0 sc_in sc_lv 32 signal 14 } 
	{ input_B_6_address0 sc_out sc_lv 3 signal 15 } 
	{ input_B_6_ce0 sc_out sc_logic 1 signal 15 } 
	{ input_B_6_q0 sc_in sc_lv 32 signal 15 } 
	{ input_B_7_address0 sc_out sc_lv 3 signal 16 } 
	{ input_B_7_ce0 sc_out sc_logic 1 signal 16 } 
	{ input_B_7_q0 sc_in sc_lv 32 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_A", "role": "address0" }} , 
 	{ "name": "input_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_A", "role": "ce0" }} , 
 	{ "name": "input_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A", "role": "q0" }} , 
 	{ "name": "input_A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_A_1", "role": "address0" }} , 
 	{ "name": "input_A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_A_1", "role": "ce0" }} , 
 	{ "name": "input_A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_1", "role": "q0" }} , 
 	{ "name": "input_A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_A_2", "role": "address0" }} , 
 	{ "name": "input_A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_A_2", "role": "ce0" }} , 
 	{ "name": "input_A_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_2", "role": "q0" }} , 
 	{ "name": "input_A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_A_3", "role": "address0" }} , 
 	{ "name": "input_A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_A_3", "role": "ce0" }} , 
 	{ "name": "input_A_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_3", "role": "q0" }} , 
 	{ "name": "input_A_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_A_4", "role": "address0" }} , 
 	{ "name": "input_A_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_A_4", "role": "ce0" }} , 
 	{ "name": "input_A_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_4", "role": "q0" }} , 
 	{ "name": "input_A_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_A_5", "role": "address0" }} , 
 	{ "name": "input_A_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_A_5", "role": "ce0" }} , 
 	{ "name": "input_A_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_5", "role": "q0" }} , 
 	{ "name": "input_A_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_A_6", "role": "address0" }} , 
 	{ "name": "input_A_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_A_6", "role": "ce0" }} , 
 	{ "name": "input_A_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_6", "role": "q0" }} , 
 	{ "name": "input_A_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_A_7", "role": "address0" }} , 
 	{ "name": "input_A_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_A_7", "role": "ce0" }} , 
 	{ "name": "input_A_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_7", "role": "q0" }} , 
 	{ "name": "output_C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "output_C", "role": "address0" }} , 
 	{ "name": "output_C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_C", "role": "ce0" }} , 
 	{ "name": "output_C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_C", "role": "we0" }} , 
 	{ "name": "output_C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_C", "role": "d0" }} , 
 	{ "name": "input_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_B", "role": "address0" }} , 
 	{ "name": "input_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_B", "role": "ce0" }} , 
 	{ "name": "input_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_B", "role": "q0" }} , 
 	{ "name": "input_B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_B_1", "role": "address0" }} , 
 	{ "name": "input_B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_B_1", "role": "ce0" }} , 
 	{ "name": "input_B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_B_1", "role": "q0" }} , 
 	{ "name": "input_B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_B_2", "role": "address0" }} , 
 	{ "name": "input_B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_B_2", "role": "ce0" }} , 
 	{ "name": "input_B_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_B_2", "role": "q0" }} , 
 	{ "name": "input_B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_B_3", "role": "address0" }} , 
 	{ "name": "input_B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_B_3", "role": "ce0" }} , 
 	{ "name": "input_B_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_B_3", "role": "q0" }} , 
 	{ "name": "input_B_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_B_4", "role": "address0" }} , 
 	{ "name": "input_B_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_B_4", "role": "ce0" }} , 
 	{ "name": "input_B_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_B_4", "role": "q0" }} , 
 	{ "name": "input_B_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_B_5", "role": "address0" }} , 
 	{ "name": "input_B_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_B_5", "role": "ce0" }} , 
 	{ "name": "input_B_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_B_5", "role": "q0" }} , 
 	{ "name": "input_B_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_B_6", "role": "address0" }} , 
 	{ "name": "input_B_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_B_6", "role": "ce0" }} , 
 	{ "name": "input_B_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_B_6", "role": "q0" }} , 
 	{ "name": "input_B_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_B_7", "role": "address0" }} , 
 	{ "name": "input_B_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_B_7", "role": "ce0" }} , 
 	{ "name": "input_B_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_B_7", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U19", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U20", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U21", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U22", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U23", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U24", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U25", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U26", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		input_B_7 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "72", "Max" : "72"}
	, {"Name" : "Interval", "Min" : "72", "Max" : "72"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_A { ap_memory {  { input_A_address0 mem_address 1 3 }  { input_A_ce0 mem_ce 1 1 }  { input_A_q0 mem_dout 0 32 } } }
	input_A_1 { ap_memory {  { input_A_1_address0 mem_address 1 3 }  { input_A_1_ce0 mem_ce 1 1 }  { input_A_1_q0 mem_dout 0 32 } } }
	input_A_2 { ap_memory {  { input_A_2_address0 mem_address 1 3 }  { input_A_2_ce0 mem_ce 1 1 }  { input_A_2_q0 mem_dout 0 32 } } }
	input_A_3 { ap_memory {  { input_A_3_address0 mem_address 1 3 }  { input_A_3_ce0 mem_ce 1 1 }  { input_A_3_q0 mem_dout 0 32 } } }
	input_A_4 { ap_memory {  { input_A_4_address0 mem_address 1 3 }  { input_A_4_ce0 mem_ce 1 1 }  { input_A_4_q0 mem_dout 0 32 } } }
	input_A_5 { ap_memory {  { input_A_5_address0 mem_address 1 3 }  { input_A_5_ce0 mem_ce 1 1 }  { input_A_5_q0 mem_dout 0 32 } } }
	input_A_6 { ap_memory {  { input_A_6_address0 mem_address 1 3 }  { input_A_6_ce0 mem_ce 1 1 }  { input_A_6_q0 mem_dout 0 32 } } }
	input_A_7 { ap_memory {  { input_A_7_address0 mem_address 1 3 }  { input_A_7_ce0 mem_ce 1 1 }  { input_A_7_q0 mem_dout 0 32 } } }
	output_C { ap_memory {  { output_C_address0 mem_address 1 6 }  { output_C_ce0 mem_ce 1 1 }  { output_C_we0 mem_we 1 1 }  { output_C_d0 mem_din 1 32 } } }
	input_B { ap_memory {  { input_B_address0 mem_address 1 3 }  { input_B_ce0 mem_ce 1 1 }  { input_B_q0 mem_dout 0 32 } } }
	input_B_1 { ap_memory {  { input_B_1_address0 mem_address 1 3 }  { input_B_1_ce0 mem_ce 1 1 }  { input_B_1_q0 mem_dout 0 32 } } }
	input_B_2 { ap_memory {  { input_B_2_address0 mem_address 1 3 }  { input_B_2_ce0 mem_ce 1 1 }  { input_B_2_q0 mem_dout 0 32 } } }
	input_B_3 { ap_memory {  { input_B_3_address0 mem_address 1 3 }  { input_B_3_ce0 mem_ce 1 1 }  { input_B_3_q0 mem_dout 0 32 } } }
	input_B_4 { ap_memory {  { input_B_4_address0 mem_address 1 3 }  { input_B_4_ce0 mem_ce 1 1 }  { input_B_4_q0 mem_dout 0 32 } } }
	input_B_5 { ap_memory {  { input_B_5_address0 mem_address 1 3 }  { input_B_5_ce0 mem_ce 1 1 }  { input_B_5_q0 mem_dout 0 32 } } }
	input_B_6 { ap_memory {  { input_B_6_address0 mem_address 1 3 }  { input_B_6_ce0 mem_ce 1 1 }  { input_B_6_q0 mem_dout 0 32 } } }
	input_B_7 { ap_memory {  { input_B_7_address0 mem_address 1 3 }  { input_B_7_ce0 mem_ce 1 1 }  { input_B_7_q0 mem_dout 0 32 } } }
}
