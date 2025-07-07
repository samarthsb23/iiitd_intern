set moduleName matrixmul_32_opt_Pipeline_loop_input_A2
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
set C_modelName {matrixmul_32_opt_Pipeline_loop_input_A2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_A_V_data_V int 32 regular {axi_s 0 volatile  { in_A Data } }  }
	{ in_A_V_keep_V int 4 regular {axi_s 0 volatile  { in_A Keep } }  }
	{ in_A_V_strb_V int 4 regular {axi_s 0 volatile  { in_A Strb } }  }
	{ in_A_V_last_V int 1 regular {axi_s 0 volatile  { in_A Last } }  }
	{ empty_295 int 32 regular {pointer 2}  }
	{ empty_296 int 4 regular {pointer 1}  }
	{ empty_297 int 4 regular {pointer 1}  }
	{ empty int 1 regular {pointer 1}  }
	{ input_A_31_out float 32 regular {pointer 1}  }
	{ input_A_30_out float 32 regular {pointer 1}  }
	{ input_A_29_out float 32 regular {pointer 1}  }
	{ input_A_28_out float 32 regular {pointer 1}  }
	{ input_A_27_out float 32 regular {pointer 1}  }
	{ input_A_26_out float 32 regular {pointer 1}  }
	{ input_A_25_out float 32 regular {pointer 1}  }
	{ input_A_24_out float 32 regular {pointer 1}  }
	{ input_A_23_out float 32 regular {pointer 1}  }
	{ input_A_22_out float 32 regular {pointer 1}  }
	{ input_A_21_out float 32 regular {pointer 1}  }
	{ input_A_20_out float 32 regular {pointer 1}  }
	{ input_A_19_out float 32 regular {pointer 1}  }
	{ input_A_18_out float 32 regular {pointer 1}  }
	{ input_A_17_out float 32 regular {pointer 1}  }
	{ input_A_16_out float 32 regular {pointer 1}  }
	{ input_A_15_out float 32 regular {pointer 1}  }
	{ input_A_14_out float 32 regular {pointer 1}  }
	{ input_A_13_out float 32 regular {pointer 1}  }
	{ input_A_12_out float 32 regular {pointer 1}  }
	{ input_A_11_out float 32 regular {pointer 1}  }
	{ input_A_10_out float 32 regular {pointer 1}  }
	{ input_A_9_out float 32 regular {pointer 1}  }
	{ input_A_8_out float 32 regular {pointer 1}  }
	{ input_A_7_out float 32 regular {pointer 1}  }
	{ input_A_6_out float 32 regular {pointer 1}  }
	{ input_A_5_out float 32 regular {pointer 1}  }
	{ input_A_4_out float 32 regular {pointer 1}  }
	{ input_A_3_out float 32 regular {pointer 1}  }
	{ input_A_2_out float 32 regular {pointer 1}  }
	{ input_A_1_out float 32 regular {pointer 1}  }
	{ input_A_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_295", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_296", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_297", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_31_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_30_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_24_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_22_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_21_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_A_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_A_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_A_TREADY sc_out sc_logic 1 inacc 3 } 
	{ in_A_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_A_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_A_TLAST sc_in sc_lv 1 signal 3 } 
	{ empty_295_i sc_in sc_lv 32 signal 4 } 
	{ empty_295_o sc_out sc_lv 32 signal 4 } 
	{ empty_295_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ empty_296 sc_out sc_lv 4 signal 5 } 
	{ empty_296_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ empty_297 sc_out sc_lv 4 signal 6 } 
	{ empty_297_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ empty sc_out sc_lv 1 signal 7 } 
	{ empty_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_A_31_out sc_out sc_lv 32 signal 8 } 
	{ input_A_31_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_A_30_out sc_out sc_lv 32 signal 9 } 
	{ input_A_30_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ input_A_29_out sc_out sc_lv 32 signal 10 } 
	{ input_A_29_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_A_28_out sc_out sc_lv 32 signal 11 } 
	{ input_A_28_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ input_A_27_out sc_out sc_lv 32 signal 12 } 
	{ input_A_27_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ input_A_26_out sc_out sc_lv 32 signal 13 } 
	{ input_A_26_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ input_A_25_out sc_out sc_lv 32 signal 14 } 
	{ input_A_25_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ input_A_24_out sc_out sc_lv 32 signal 15 } 
	{ input_A_24_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ input_A_23_out sc_out sc_lv 32 signal 16 } 
	{ input_A_23_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ input_A_22_out sc_out sc_lv 32 signal 17 } 
	{ input_A_22_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ input_A_21_out sc_out sc_lv 32 signal 18 } 
	{ input_A_21_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ input_A_20_out sc_out sc_lv 32 signal 19 } 
	{ input_A_20_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ input_A_19_out sc_out sc_lv 32 signal 20 } 
	{ input_A_19_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ input_A_18_out sc_out sc_lv 32 signal 21 } 
	{ input_A_18_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ input_A_17_out sc_out sc_lv 32 signal 22 } 
	{ input_A_17_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ input_A_16_out sc_out sc_lv 32 signal 23 } 
	{ input_A_16_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ input_A_15_out sc_out sc_lv 32 signal 24 } 
	{ input_A_15_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ input_A_14_out sc_out sc_lv 32 signal 25 } 
	{ input_A_14_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ input_A_13_out sc_out sc_lv 32 signal 26 } 
	{ input_A_13_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ input_A_12_out sc_out sc_lv 32 signal 27 } 
	{ input_A_12_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ input_A_11_out sc_out sc_lv 32 signal 28 } 
	{ input_A_11_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ input_A_10_out sc_out sc_lv 32 signal 29 } 
	{ input_A_10_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ input_A_9_out sc_out sc_lv 32 signal 30 } 
	{ input_A_9_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ input_A_8_out sc_out sc_lv 32 signal 31 } 
	{ input_A_8_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ input_A_7_out sc_out sc_lv 32 signal 32 } 
	{ input_A_7_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ input_A_6_out sc_out sc_lv 32 signal 33 } 
	{ input_A_6_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ input_A_5_out sc_out sc_lv 32 signal 34 } 
	{ input_A_5_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ input_A_4_out sc_out sc_lv 32 signal 35 } 
	{ input_A_4_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ input_A_3_out sc_out sc_lv 32 signal 36 } 
	{ input_A_3_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ input_A_2_out sc_out sc_lv 32 signal 37 } 
	{ input_A_2_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ input_A_1_out sc_out sc_lv 32 signal 38 } 
	{ input_A_1_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ input_A_out sc_out sc_lv 32 signal 39 } 
	{ input_A_out_ap_vld sc_out sc_logic 1 outvld 39 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_A_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_A_V_data_V", "role": "default" }} , 
 	{ "name": "in_A_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_A_V_data_V", "role": "default" }} , 
 	{ "name": "in_A_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_A_V_last_V", "role": "default" }} , 
 	{ "name": "in_A_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_A_V_keep_V", "role": "default" }} , 
 	{ "name": "in_A_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_A_V_strb_V", "role": "default" }} , 
 	{ "name": "in_A_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_A_V_last_V", "role": "default" }} , 
 	{ "name": "empty_295_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_295", "role": "i" }} , 
 	{ "name": "empty_295_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_295", "role": "o" }} , 
 	{ "name": "empty_295_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_295", "role": "o_ap_vld" }} , 
 	{ "name": "empty_296", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_296", "role": "default" }} , 
 	{ "name": "empty_296_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_296", "role": "ap_vld" }} , 
 	{ "name": "empty_297", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_297", "role": "default" }} , 
 	{ "name": "empty_297_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_297", "role": "ap_vld" }} , 
 	{ "name": "empty", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "empty_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty", "role": "ap_vld" }} , 
 	{ "name": "input_A_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_31_out", "role": "default" }} , 
 	{ "name": "input_A_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_31_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_30_out", "role": "default" }} , 
 	{ "name": "input_A_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_30_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_29_out", "role": "default" }} , 
 	{ "name": "input_A_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_29_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_28_out", "role": "default" }} , 
 	{ "name": "input_A_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_28_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_27_out", "role": "default" }} , 
 	{ "name": "input_A_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_27_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_26_out", "role": "default" }} , 
 	{ "name": "input_A_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_26_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_25_out", "role": "default" }} , 
 	{ "name": "input_A_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_25_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_24_out", "role": "default" }} , 
 	{ "name": "input_A_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_24_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_23_out", "role": "default" }} , 
 	{ "name": "input_A_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_23_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_22_out", "role": "default" }} , 
 	{ "name": "input_A_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_22_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_21_out", "role": "default" }} , 
 	{ "name": "input_A_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_21_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_20_out", "role": "default" }} , 
 	{ "name": "input_A_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_20_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_19_out", "role": "default" }} , 
 	{ "name": "input_A_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_19_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_18_out", "role": "default" }} , 
 	{ "name": "input_A_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_18_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_17_out", "role": "default" }} , 
 	{ "name": "input_A_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_17_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_16_out", "role": "default" }} , 
 	{ "name": "input_A_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_16_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_15_out", "role": "default" }} , 
 	{ "name": "input_A_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_15_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_14_out", "role": "default" }} , 
 	{ "name": "input_A_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_14_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_13_out", "role": "default" }} , 
 	{ "name": "input_A_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_13_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_12_out", "role": "default" }} , 
 	{ "name": "input_A_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_12_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_11_out", "role": "default" }} , 
 	{ "name": "input_A_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_11_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_10_out", "role": "default" }} , 
 	{ "name": "input_A_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_10_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_9_out", "role": "default" }} , 
 	{ "name": "input_A_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_9_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_8_out", "role": "default" }} , 
 	{ "name": "input_A_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_8_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_7_out", "role": "default" }} , 
 	{ "name": "input_A_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_7_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_6_out", "role": "default" }} , 
 	{ "name": "input_A_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_6_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_5_out", "role": "default" }} , 
 	{ "name": "input_A_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_5_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_4_out", "role": "default" }} , 
 	{ "name": "input_A_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_4_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_3_out", "role": "default" }} , 
 	{ "name": "input_A_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_3_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_2_out", "role": "default" }} , 
 	{ "name": "input_A_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_2_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_1_out", "role": "default" }} , 
 	{ "name": "input_A_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_1_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_out", "role": "default" }} , 
 	{ "name": "input_A_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrixmul_32_opt_Pipeline_loop_input_A2",
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
			{"Name" : "in_A_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A",
				"BlockSignal" : [
					{"Name" : "in_A_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_A_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A"},
			{"Name" : "in_A_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A"},
			{"Name" : "in_A_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_A"},
			{"Name" : "empty_295", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_296", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty_297", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_input_A2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_32_opt_Pipeline_loop_input_A2 {
		in_A_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_last_V {Type I LastRead 1 FirstWrite -1}
		empty_295 {Type IO LastRead 1 FirstWrite 1}
		empty_296 {Type O LastRead -1 FirstWrite 1}
		empty_297 {Type O LastRead -1 FirstWrite 1}
		empty {Type O LastRead -1 FirstWrite 1}
		input_A_31_out {Type O LastRead -1 FirstWrite 0}
		input_A_30_out {Type O LastRead -1 FirstWrite 0}
		input_A_29_out {Type O LastRead -1 FirstWrite 0}
		input_A_28_out {Type O LastRead -1 FirstWrite 0}
		input_A_27_out {Type O LastRead -1 FirstWrite 0}
		input_A_26_out {Type O LastRead -1 FirstWrite 0}
		input_A_25_out {Type O LastRead -1 FirstWrite 0}
		input_A_24_out {Type O LastRead -1 FirstWrite 0}
		input_A_23_out {Type O LastRead -1 FirstWrite 0}
		input_A_22_out {Type O LastRead -1 FirstWrite 0}
		input_A_21_out {Type O LastRead -1 FirstWrite 0}
		input_A_20_out {Type O LastRead -1 FirstWrite 0}
		input_A_19_out {Type O LastRead -1 FirstWrite 0}
		input_A_18_out {Type O LastRead -1 FirstWrite 0}
		input_A_17_out {Type O LastRead -1 FirstWrite 0}
		input_A_16_out {Type O LastRead -1 FirstWrite 0}
		input_A_15_out {Type O LastRead -1 FirstWrite 0}
		input_A_14_out {Type O LastRead -1 FirstWrite 0}
		input_A_13_out {Type O LastRead -1 FirstWrite 0}
		input_A_12_out {Type O LastRead -1 FirstWrite 0}
		input_A_11_out {Type O LastRead -1 FirstWrite 0}
		input_A_10_out {Type O LastRead -1 FirstWrite 0}
		input_A_9_out {Type O LastRead -1 FirstWrite 0}
		input_A_8_out {Type O LastRead -1 FirstWrite 0}
		input_A_7_out {Type O LastRead -1 FirstWrite 0}
		input_A_6_out {Type O LastRead -1 FirstWrite 0}
		input_A_5_out {Type O LastRead -1 FirstWrite 0}
		input_A_4_out {Type O LastRead -1 FirstWrite 0}
		input_A_3_out {Type O LastRead -1 FirstWrite 0}
		input_A_2_out {Type O LastRead -1 FirstWrite 0}
		input_A_1_out {Type O LastRead -1 FirstWrite 0}
		input_A_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_A_V_data_V { axis {  { in_A_TVALID in_vld 0 1 }  { in_A_TDATA in_data 0 32 } } }
	in_A_V_keep_V { axis {  { in_A_TKEEP in_data 0 4 } } }
	in_A_V_strb_V { axis {  { in_A_TSTRB in_data 0 4 } } }
	in_A_V_last_V { axis {  { in_A_TREADY in_acc 1 1 }  { in_A_TLAST in_data 0 1 } } }
	empty_295 { ap_ovld {  { empty_295_i in_data 0 32 }  { empty_295_o out_data 1 32 }  { empty_295_o_ap_vld out_vld 1 1 } } }
	empty_296 { ap_vld {  { empty_296 out_data 1 4 }  { empty_296_ap_vld out_vld 1 1 } } }
	empty_297 { ap_vld {  { empty_297 out_data 1 4 }  { empty_297_ap_vld out_vld 1 1 } } }
	empty { ap_vld {  { empty out_data 1 1 }  { empty_ap_vld out_vld 1 1 } } }
	input_A_31_out { ap_vld {  { input_A_31_out out_data 1 32 }  { input_A_31_out_ap_vld out_vld 1 1 } } }
	input_A_30_out { ap_vld {  { input_A_30_out out_data 1 32 }  { input_A_30_out_ap_vld out_vld 1 1 } } }
	input_A_29_out { ap_vld {  { input_A_29_out out_data 1 32 }  { input_A_29_out_ap_vld out_vld 1 1 } } }
	input_A_28_out { ap_vld {  { input_A_28_out out_data 1 32 }  { input_A_28_out_ap_vld out_vld 1 1 } } }
	input_A_27_out { ap_vld {  { input_A_27_out out_data 1 32 }  { input_A_27_out_ap_vld out_vld 1 1 } } }
	input_A_26_out { ap_vld {  { input_A_26_out out_data 1 32 }  { input_A_26_out_ap_vld out_vld 1 1 } } }
	input_A_25_out { ap_vld {  { input_A_25_out out_data 1 32 }  { input_A_25_out_ap_vld out_vld 1 1 } } }
	input_A_24_out { ap_vld {  { input_A_24_out out_data 1 32 }  { input_A_24_out_ap_vld out_vld 1 1 } } }
	input_A_23_out { ap_vld {  { input_A_23_out out_data 1 32 }  { input_A_23_out_ap_vld out_vld 1 1 } } }
	input_A_22_out { ap_vld {  { input_A_22_out out_data 1 32 }  { input_A_22_out_ap_vld out_vld 1 1 } } }
	input_A_21_out { ap_vld {  { input_A_21_out out_data 1 32 }  { input_A_21_out_ap_vld out_vld 1 1 } } }
	input_A_20_out { ap_vld {  { input_A_20_out out_data 1 32 }  { input_A_20_out_ap_vld out_vld 1 1 } } }
	input_A_19_out { ap_vld {  { input_A_19_out out_data 1 32 }  { input_A_19_out_ap_vld out_vld 1 1 } } }
	input_A_18_out { ap_vld {  { input_A_18_out out_data 1 32 }  { input_A_18_out_ap_vld out_vld 1 1 } } }
	input_A_17_out { ap_vld {  { input_A_17_out out_data 1 32 }  { input_A_17_out_ap_vld out_vld 1 1 } } }
	input_A_16_out { ap_vld {  { input_A_16_out out_data 1 32 }  { input_A_16_out_ap_vld out_vld 1 1 } } }
	input_A_15_out { ap_vld {  { input_A_15_out out_data 1 32 }  { input_A_15_out_ap_vld out_vld 1 1 } } }
	input_A_14_out { ap_vld {  { input_A_14_out out_data 1 32 }  { input_A_14_out_ap_vld out_vld 1 1 } } }
	input_A_13_out { ap_vld {  { input_A_13_out out_data 1 32 }  { input_A_13_out_ap_vld out_vld 1 1 } } }
	input_A_12_out { ap_vld {  { input_A_12_out out_data 1 32 }  { input_A_12_out_ap_vld out_vld 1 1 } } }
	input_A_11_out { ap_vld {  { input_A_11_out out_data 1 32 }  { input_A_11_out_ap_vld out_vld 1 1 } } }
	input_A_10_out { ap_vld {  { input_A_10_out out_data 1 32 }  { input_A_10_out_ap_vld out_vld 1 1 } } }
	input_A_9_out { ap_vld {  { input_A_9_out out_data 1 32 }  { input_A_9_out_ap_vld out_vld 1 1 } } }
	input_A_8_out { ap_vld {  { input_A_8_out out_data 1 32 }  { input_A_8_out_ap_vld out_vld 1 1 } } }
	input_A_7_out { ap_vld {  { input_A_7_out out_data 1 32 }  { input_A_7_out_ap_vld out_vld 1 1 } } }
	input_A_6_out { ap_vld {  { input_A_6_out out_data 1 32 }  { input_A_6_out_ap_vld out_vld 1 1 } } }
	input_A_5_out { ap_vld {  { input_A_5_out out_data 1 32 }  { input_A_5_out_ap_vld out_vld 1 1 } } }
	input_A_4_out { ap_vld {  { input_A_4_out out_data 1 32 }  { input_A_4_out_ap_vld out_vld 1 1 } } }
	input_A_3_out { ap_vld {  { input_A_3_out out_data 1 32 }  { input_A_3_out_ap_vld out_vld 1 1 } } }
	input_A_2_out { ap_vld {  { input_A_2_out out_data 1 32 }  { input_A_2_out_ap_vld out_vld 1 1 } } }
	input_A_1_out { ap_vld {  { input_A_1_out out_data 1 32 }  { input_A_1_out_ap_vld out_vld 1 1 } } }
	input_A_out { ap_vld {  { input_A_out out_data 1 32 }  { input_A_out_ap_vld out_vld 1 1 } } }
}
