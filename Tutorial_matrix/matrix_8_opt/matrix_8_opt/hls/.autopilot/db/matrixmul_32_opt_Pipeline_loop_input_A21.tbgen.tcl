set moduleName matrixmul_32_opt_Pipeline_loop_input_A21
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
set C_modelName {matrixmul_32_opt_Pipeline_loop_input_A21}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_A_V_data_V int 32 regular {axi_s 0 volatile  { in_A Data } }  }
	{ in_A_V_keep_V int 4 regular {axi_s 0 volatile  { in_A Keep } }  }
	{ in_A_V_strb_V int 4 regular {axi_s 0 volatile  { in_A Strb } }  }
	{ in_A_V_last_V int 1 regular {axi_s 0 volatile  { in_A Last } }  }
	{ empty_292 int 32 regular {pointer 2}  }
	{ empty_293 int 4 regular {pointer 1}  }
	{ empty_294 int 4 regular {pointer 1}  }
	{ empty int 1 regular {pointer 1}  }
	{ input_A_96_out float 32 regular {pointer 1}  }
	{ input_A_95_out float 32 regular {pointer 1}  }
	{ input_A_94_out float 32 regular {pointer 1}  }
	{ input_A_93_out float 32 regular {pointer 1}  }
	{ input_A_92_out float 32 regular {pointer 1}  }
	{ input_A_91_out float 32 regular {pointer 1}  }
	{ input_A_90_out float 32 regular {pointer 1}  }
	{ input_A_89_out float 32 regular {pointer 1}  }
	{ input_A_88_out float 32 regular {pointer 1}  }
	{ input_A_87_out float 32 regular {pointer 1}  }
	{ input_A_86_out float 32 regular {pointer 1}  }
	{ input_A_85_out float 32 regular {pointer 1}  }
	{ input_A_84_out float 32 regular {pointer 1}  }
	{ input_A_83_out float 32 regular {pointer 1}  }
	{ input_A_82_out float 32 regular {pointer 1}  }
	{ input_A_81_out float 32 regular {pointer 1}  }
	{ input_A_80_out float 32 regular {pointer 1}  }
	{ input_A_79_out float 32 regular {pointer 1}  }
	{ input_A_78_out float 32 regular {pointer 1}  }
	{ input_A_77_out float 32 regular {pointer 1}  }
	{ input_A_76_out float 32 regular {pointer 1}  }
	{ input_A_75_out float 32 regular {pointer 1}  }
	{ input_A_74_out float 32 regular {pointer 1}  }
	{ input_A_73_out float 32 regular {pointer 1}  }
	{ input_A_72_out float 32 regular {pointer 1}  }
	{ input_A_71_out float 32 regular {pointer 1}  }
	{ input_A_70_out float 32 regular {pointer 1}  }
	{ input_A_69_out float 32 regular {pointer 1}  }
	{ input_A_68_out float 32 regular {pointer 1}  }
	{ input_A_67_out float 32 regular {pointer 1}  }
	{ input_A_66_out float 32 regular {pointer 1}  }
	{ input_A_65_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_292", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_293", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_294", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_96_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_95_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_94_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_93_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_92_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_91_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_90_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_89_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_88_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_87_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_86_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_85_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_84_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_83_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_82_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_81_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_80_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_79_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_78_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_77_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_76_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_75_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_74_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_73_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_72_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_71_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_70_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_69_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_68_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_67_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_66_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_65_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ empty_292_i sc_in sc_lv 32 signal 4 } 
	{ empty_292_o sc_out sc_lv 32 signal 4 } 
	{ empty_292_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ empty_293 sc_out sc_lv 4 signal 5 } 
	{ empty_293_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ empty_294 sc_out sc_lv 4 signal 6 } 
	{ empty_294_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ empty sc_out sc_lv 1 signal 7 } 
	{ empty_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_A_96_out sc_out sc_lv 32 signal 8 } 
	{ input_A_96_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_A_95_out sc_out sc_lv 32 signal 9 } 
	{ input_A_95_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ input_A_94_out sc_out sc_lv 32 signal 10 } 
	{ input_A_94_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_A_93_out sc_out sc_lv 32 signal 11 } 
	{ input_A_93_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ input_A_92_out sc_out sc_lv 32 signal 12 } 
	{ input_A_92_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ input_A_91_out sc_out sc_lv 32 signal 13 } 
	{ input_A_91_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ input_A_90_out sc_out sc_lv 32 signal 14 } 
	{ input_A_90_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ input_A_89_out sc_out sc_lv 32 signal 15 } 
	{ input_A_89_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ input_A_88_out sc_out sc_lv 32 signal 16 } 
	{ input_A_88_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ input_A_87_out sc_out sc_lv 32 signal 17 } 
	{ input_A_87_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ input_A_86_out sc_out sc_lv 32 signal 18 } 
	{ input_A_86_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ input_A_85_out sc_out sc_lv 32 signal 19 } 
	{ input_A_85_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ input_A_84_out sc_out sc_lv 32 signal 20 } 
	{ input_A_84_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ input_A_83_out sc_out sc_lv 32 signal 21 } 
	{ input_A_83_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ input_A_82_out sc_out sc_lv 32 signal 22 } 
	{ input_A_82_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ input_A_81_out sc_out sc_lv 32 signal 23 } 
	{ input_A_81_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ input_A_80_out sc_out sc_lv 32 signal 24 } 
	{ input_A_80_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ input_A_79_out sc_out sc_lv 32 signal 25 } 
	{ input_A_79_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ input_A_78_out sc_out sc_lv 32 signal 26 } 
	{ input_A_78_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ input_A_77_out sc_out sc_lv 32 signal 27 } 
	{ input_A_77_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ input_A_76_out sc_out sc_lv 32 signal 28 } 
	{ input_A_76_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ input_A_75_out sc_out sc_lv 32 signal 29 } 
	{ input_A_75_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ input_A_74_out sc_out sc_lv 32 signal 30 } 
	{ input_A_74_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ input_A_73_out sc_out sc_lv 32 signal 31 } 
	{ input_A_73_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ input_A_72_out sc_out sc_lv 32 signal 32 } 
	{ input_A_72_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ input_A_71_out sc_out sc_lv 32 signal 33 } 
	{ input_A_71_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ input_A_70_out sc_out sc_lv 32 signal 34 } 
	{ input_A_70_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ input_A_69_out sc_out sc_lv 32 signal 35 } 
	{ input_A_69_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ input_A_68_out sc_out sc_lv 32 signal 36 } 
	{ input_A_68_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ input_A_67_out sc_out sc_lv 32 signal 37 } 
	{ input_A_67_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ input_A_66_out sc_out sc_lv 32 signal 38 } 
	{ input_A_66_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ input_A_65_out sc_out sc_lv 32 signal 39 } 
	{ input_A_65_out_ap_vld sc_out sc_logic 1 outvld 39 } 
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
 	{ "name": "empty_292_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_292", "role": "i" }} , 
 	{ "name": "empty_292_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_292", "role": "o" }} , 
 	{ "name": "empty_292_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_292", "role": "o_ap_vld" }} , 
 	{ "name": "empty_293", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_293", "role": "default" }} , 
 	{ "name": "empty_293_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_293", "role": "ap_vld" }} , 
 	{ "name": "empty_294", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_294", "role": "default" }} , 
 	{ "name": "empty_294_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_294", "role": "ap_vld" }} , 
 	{ "name": "empty", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "empty_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty", "role": "ap_vld" }} , 
 	{ "name": "input_A_96_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_96_out", "role": "default" }} , 
 	{ "name": "input_A_96_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_96_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_95_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_95_out", "role": "default" }} , 
 	{ "name": "input_A_95_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_95_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_94_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_94_out", "role": "default" }} , 
 	{ "name": "input_A_94_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_94_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_93_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_93_out", "role": "default" }} , 
 	{ "name": "input_A_93_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_93_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_92_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_92_out", "role": "default" }} , 
 	{ "name": "input_A_92_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_92_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_91_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_91_out", "role": "default" }} , 
 	{ "name": "input_A_91_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_91_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_90_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_90_out", "role": "default" }} , 
 	{ "name": "input_A_90_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_90_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_89_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_89_out", "role": "default" }} , 
 	{ "name": "input_A_89_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_89_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_88_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_88_out", "role": "default" }} , 
 	{ "name": "input_A_88_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_88_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_87_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_87_out", "role": "default" }} , 
 	{ "name": "input_A_87_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_87_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_86_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_86_out", "role": "default" }} , 
 	{ "name": "input_A_86_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_86_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_85_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_85_out", "role": "default" }} , 
 	{ "name": "input_A_85_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_85_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_84_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_84_out", "role": "default" }} , 
 	{ "name": "input_A_84_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_84_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_83_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_83_out", "role": "default" }} , 
 	{ "name": "input_A_83_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_83_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_82_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_82_out", "role": "default" }} , 
 	{ "name": "input_A_82_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_82_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_81_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_81_out", "role": "default" }} , 
 	{ "name": "input_A_81_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_81_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_80_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_80_out", "role": "default" }} , 
 	{ "name": "input_A_80_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_80_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_79_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_79_out", "role": "default" }} , 
 	{ "name": "input_A_79_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_79_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_78_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_78_out", "role": "default" }} , 
 	{ "name": "input_A_78_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_78_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_77_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_77_out", "role": "default" }} , 
 	{ "name": "input_A_77_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_77_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_76_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_76_out", "role": "default" }} , 
 	{ "name": "input_A_76_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_76_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_75_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_75_out", "role": "default" }} , 
 	{ "name": "input_A_75_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_75_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_74_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_74_out", "role": "default" }} , 
 	{ "name": "input_A_74_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_74_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_73_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_73_out", "role": "default" }} , 
 	{ "name": "input_A_73_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_73_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_72_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_72_out", "role": "default" }} , 
 	{ "name": "input_A_72_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_72_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_71_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_71_out", "role": "default" }} , 
 	{ "name": "input_A_71_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_71_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_70_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_70_out", "role": "default" }} , 
 	{ "name": "input_A_70_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_70_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_69_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_69_out", "role": "default" }} , 
 	{ "name": "input_A_69_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_69_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_68_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_68_out", "role": "default" }} , 
 	{ "name": "input_A_68_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_68_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_67_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_67_out", "role": "default" }} , 
 	{ "name": "input_A_67_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_67_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_66_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_66_out", "role": "default" }} , 
 	{ "name": "input_A_66_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_66_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_65_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_65_out", "role": "default" }} , 
 	{ "name": "input_A_65_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_65_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrixmul_32_opt_Pipeline_loop_input_A21",
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
			{"Name" : "empty_292", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_293", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty_294", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_65_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_input_A2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_32_opt_Pipeline_loop_input_A21 {
		in_A_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_last_V {Type I LastRead 1 FirstWrite -1}
		empty_292 {Type IO LastRead 1 FirstWrite 1}
		empty_293 {Type O LastRead -1 FirstWrite 1}
		empty_294 {Type O LastRead -1 FirstWrite 1}
		empty {Type O LastRead -1 FirstWrite 1}
		input_A_96_out {Type O LastRead -1 FirstWrite 0}
		input_A_95_out {Type O LastRead -1 FirstWrite 0}
		input_A_94_out {Type O LastRead -1 FirstWrite 0}
		input_A_93_out {Type O LastRead -1 FirstWrite 0}
		input_A_92_out {Type O LastRead -1 FirstWrite 0}
		input_A_91_out {Type O LastRead -1 FirstWrite 0}
		input_A_90_out {Type O LastRead -1 FirstWrite 0}
		input_A_89_out {Type O LastRead -1 FirstWrite 0}
		input_A_88_out {Type O LastRead -1 FirstWrite 0}
		input_A_87_out {Type O LastRead -1 FirstWrite 0}
		input_A_86_out {Type O LastRead -1 FirstWrite 0}
		input_A_85_out {Type O LastRead -1 FirstWrite 0}
		input_A_84_out {Type O LastRead -1 FirstWrite 0}
		input_A_83_out {Type O LastRead -1 FirstWrite 0}
		input_A_82_out {Type O LastRead -1 FirstWrite 0}
		input_A_81_out {Type O LastRead -1 FirstWrite 0}
		input_A_80_out {Type O LastRead -1 FirstWrite 0}
		input_A_79_out {Type O LastRead -1 FirstWrite 0}
		input_A_78_out {Type O LastRead -1 FirstWrite 0}
		input_A_77_out {Type O LastRead -1 FirstWrite 0}
		input_A_76_out {Type O LastRead -1 FirstWrite 0}
		input_A_75_out {Type O LastRead -1 FirstWrite 0}
		input_A_74_out {Type O LastRead -1 FirstWrite 0}
		input_A_73_out {Type O LastRead -1 FirstWrite 0}
		input_A_72_out {Type O LastRead -1 FirstWrite 0}
		input_A_71_out {Type O LastRead -1 FirstWrite 0}
		input_A_70_out {Type O LastRead -1 FirstWrite 0}
		input_A_69_out {Type O LastRead -1 FirstWrite 0}
		input_A_68_out {Type O LastRead -1 FirstWrite 0}
		input_A_67_out {Type O LastRead -1 FirstWrite 0}
		input_A_66_out {Type O LastRead -1 FirstWrite 0}
		input_A_65_out {Type O LastRead -1 FirstWrite 0}}}

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
	empty_292 { ap_ovld {  { empty_292_i in_data 0 32 }  { empty_292_o out_data 1 32 }  { empty_292_o_ap_vld out_vld 1 1 } } }
	empty_293 { ap_vld {  { empty_293 out_data 1 4 }  { empty_293_ap_vld out_vld 1 1 } } }
	empty_294 { ap_vld {  { empty_294 out_data 1 4 }  { empty_294_ap_vld out_vld 1 1 } } }
	empty { ap_vld {  { empty out_data 1 1 }  { empty_ap_vld out_vld 1 1 } } }
	input_A_96_out { ap_vld {  { input_A_96_out out_data 1 32 }  { input_A_96_out_ap_vld out_vld 1 1 } } }
	input_A_95_out { ap_vld {  { input_A_95_out out_data 1 32 }  { input_A_95_out_ap_vld out_vld 1 1 } } }
	input_A_94_out { ap_vld {  { input_A_94_out out_data 1 32 }  { input_A_94_out_ap_vld out_vld 1 1 } } }
	input_A_93_out { ap_vld {  { input_A_93_out out_data 1 32 }  { input_A_93_out_ap_vld out_vld 1 1 } } }
	input_A_92_out { ap_vld {  { input_A_92_out out_data 1 32 }  { input_A_92_out_ap_vld out_vld 1 1 } } }
	input_A_91_out { ap_vld {  { input_A_91_out out_data 1 32 }  { input_A_91_out_ap_vld out_vld 1 1 } } }
	input_A_90_out { ap_vld {  { input_A_90_out out_data 1 32 }  { input_A_90_out_ap_vld out_vld 1 1 } } }
	input_A_89_out { ap_vld {  { input_A_89_out out_data 1 32 }  { input_A_89_out_ap_vld out_vld 1 1 } } }
	input_A_88_out { ap_vld {  { input_A_88_out out_data 1 32 }  { input_A_88_out_ap_vld out_vld 1 1 } } }
	input_A_87_out { ap_vld {  { input_A_87_out out_data 1 32 }  { input_A_87_out_ap_vld out_vld 1 1 } } }
	input_A_86_out { ap_vld {  { input_A_86_out out_data 1 32 }  { input_A_86_out_ap_vld out_vld 1 1 } } }
	input_A_85_out { ap_vld {  { input_A_85_out out_data 1 32 }  { input_A_85_out_ap_vld out_vld 1 1 } } }
	input_A_84_out { ap_vld {  { input_A_84_out out_data 1 32 }  { input_A_84_out_ap_vld out_vld 1 1 } } }
	input_A_83_out { ap_vld {  { input_A_83_out out_data 1 32 }  { input_A_83_out_ap_vld out_vld 1 1 } } }
	input_A_82_out { ap_vld {  { input_A_82_out out_data 1 32 }  { input_A_82_out_ap_vld out_vld 1 1 } } }
	input_A_81_out { ap_vld {  { input_A_81_out out_data 1 32 }  { input_A_81_out_ap_vld out_vld 1 1 } } }
	input_A_80_out { ap_vld {  { input_A_80_out out_data 1 32 }  { input_A_80_out_ap_vld out_vld 1 1 } } }
	input_A_79_out { ap_vld {  { input_A_79_out out_data 1 32 }  { input_A_79_out_ap_vld out_vld 1 1 } } }
	input_A_78_out { ap_vld {  { input_A_78_out out_data 1 32 }  { input_A_78_out_ap_vld out_vld 1 1 } } }
	input_A_77_out { ap_vld {  { input_A_77_out out_data 1 32 }  { input_A_77_out_ap_vld out_vld 1 1 } } }
	input_A_76_out { ap_vld {  { input_A_76_out out_data 1 32 }  { input_A_76_out_ap_vld out_vld 1 1 } } }
	input_A_75_out { ap_vld {  { input_A_75_out out_data 1 32 }  { input_A_75_out_ap_vld out_vld 1 1 } } }
	input_A_74_out { ap_vld {  { input_A_74_out out_data 1 32 }  { input_A_74_out_ap_vld out_vld 1 1 } } }
	input_A_73_out { ap_vld {  { input_A_73_out out_data 1 32 }  { input_A_73_out_ap_vld out_vld 1 1 } } }
	input_A_72_out { ap_vld {  { input_A_72_out out_data 1 32 }  { input_A_72_out_ap_vld out_vld 1 1 } } }
	input_A_71_out { ap_vld {  { input_A_71_out out_data 1 32 }  { input_A_71_out_ap_vld out_vld 1 1 } } }
	input_A_70_out { ap_vld {  { input_A_70_out out_data 1 32 }  { input_A_70_out_ap_vld out_vld 1 1 } } }
	input_A_69_out { ap_vld {  { input_A_69_out out_data 1 32 }  { input_A_69_out_ap_vld out_vld 1 1 } } }
	input_A_68_out { ap_vld {  { input_A_68_out out_data 1 32 }  { input_A_68_out_ap_vld out_vld 1 1 } } }
	input_A_67_out { ap_vld {  { input_A_67_out out_data 1 32 }  { input_A_67_out_ap_vld out_vld 1 1 } } }
	input_A_66_out { ap_vld {  { input_A_66_out out_data 1 32 }  { input_A_66_out_ap_vld out_vld 1 1 } } }
	input_A_65_out { ap_vld {  { input_A_65_out out_data 1 32 }  { input_A_65_out_ap_vld out_vld 1 1 } } }
}
