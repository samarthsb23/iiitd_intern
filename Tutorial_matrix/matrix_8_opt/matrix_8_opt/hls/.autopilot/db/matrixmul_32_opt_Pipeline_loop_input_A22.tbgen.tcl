set moduleName matrixmul_32_opt_Pipeline_loop_input_A22
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
set C_modelName {matrixmul_32_opt_Pipeline_loop_input_A22}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_A_V_data_V int 32 regular {axi_s 0 volatile  { in_A Data } }  }
	{ in_A_V_keep_V int 4 regular {axi_s 0 volatile  { in_A Keep } }  }
	{ in_A_V_strb_V int 4 regular {axi_s 0 volatile  { in_A Strb } }  }
	{ in_A_V_last_V int 1 regular {axi_s 0 volatile  { in_A Last } }  }
	{ empty_259 int 32 regular {pointer 2}  }
	{ empty_260 int 4 regular {pointer 1}  }
	{ empty_261 int 4 regular {pointer 1}  }
	{ empty int 1 regular {pointer 1}  }
	{ input_A_161_out float 32 regular {pointer 1}  }
	{ input_A_160_out float 32 regular {pointer 1}  }
	{ input_A_159_out float 32 regular {pointer 1}  }
	{ input_A_158_out float 32 regular {pointer 1}  }
	{ input_A_157_out float 32 regular {pointer 1}  }
	{ input_A_156_out float 32 regular {pointer 1}  }
	{ input_A_155_out float 32 regular {pointer 1}  }
	{ input_A_154_out float 32 regular {pointer 1}  }
	{ input_A_153_out float 32 regular {pointer 1}  }
	{ input_A_152_out float 32 regular {pointer 1}  }
	{ input_A_151_out float 32 regular {pointer 1}  }
	{ input_A_150_out float 32 regular {pointer 1}  }
	{ input_A_149_out float 32 regular {pointer 1}  }
	{ input_A_148_out float 32 regular {pointer 1}  }
	{ input_A_147_out float 32 regular {pointer 1}  }
	{ input_A_146_out float 32 regular {pointer 1}  }
	{ input_A_145_out float 32 regular {pointer 1}  }
	{ input_A_144_out float 32 regular {pointer 1}  }
	{ input_A_143_out float 32 regular {pointer 1}  }
	{ input_A_142_out float 32 regular {pointer 1}  }
	{ input_A_141_out float 32 regular {pointer 1}  }
	{ input_A_140_out float 32 regular {pointer 1}  }
	{ input_A_139_out float 32 regular {pointer 1}  }
	{ input_A_138_out float 32 regular {pointer 1}  }
	{ input_A_137_out float 32 regular {pointer 1}  }
	{ input_A_136_out float 32 regular {pointer 1}  }
	{ input_A_135_out float 32 regular {pointer 1}  }
	{ input_A_134_out float 32 regular {pointer 1}  }
	{ input_A_133_out float 32 regular {pointer 1}  }
	{ input_A_132_out float 32 regular {pointer 1}  }
	{ input_A_131_out float 32 regular {pointer 1}  }
	{ input_A_130_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_259", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_260", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_261", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_161_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_160_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_159_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_158_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_157_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_156_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_155_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_154_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_153_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_152_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_151_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_150_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_149_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_148_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_147_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_146_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_145_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_144_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_143_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_142_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_141_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_140_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_139_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_138_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_137_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_136_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_135_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_134_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_133_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_132_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_131_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_130_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ empty_259_i sc_in sc_lv 32 signal 4 } 
	{ empty_259_o sc_out sc_lv 32 signal 4 } 
	{ empty_259_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ empty_260 sc_out sc_lv 4 signal 5 } 
	{ empty_260_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ empty_261 sc_out sc_lv 4 signal 6 } 
	{ empty_261_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ empty sc_out sc_lv 1 signal 7 } 
	{ empty_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_A_161_out sc_out sc_lv 32 signal 8 } 
	{ input_A_161_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_A_160_out sc_out sc_lv 32 signal 9 } 
	{ input_A_160_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ input_A_159_out sc_out sc_lv 32 signal 10 } 
	{ input_A_159_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_A_158_out sc_out sc_lv 32 signal 11 } 
	{ input_A_158_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ input_A_157_out sc_out sc_lv 32 signal 12 } 
	{ input_A_157_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ input_A_156_out sc_out sc_lv 32 signal 13 } 
	{ input_A_156_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ input_A_155_out sc_out sc_lv 32 signal 14 } 
	{ input_A_155_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ input_A_154_out sc_out sc_lv 32 signal 15 } 
	{ input_A_154_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ input_A_153_out sc_out sc_lv 32 signal 16 } 
	{ input_A_153_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ input_A_152_out sc_out sc_lv 32 signal 17 } 
	{ input_A_152_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ input_A_151_out sc_out sc_lv 32 signal 18 } 
	{ input_A_151_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ input_A_150_out sc_out sc_lv 32 signal 19 } 
	{ input_A_150_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ input_A_149_out sc_out sc_lv 32 signal 20 } 
	{ input_A_149_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ input_A_148_out sc_out sc_lv 32 signal 21 } 
	{ input_A_148_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ input_A_147_out sc_out sc_lv 32 signal 22 } 
	{ input_A_147_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ input_A_146_out sc_out sc_lv 32 signal 23 } 
	{ input_A_146_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ input_A_145_out sc_out sc_lv 32 signal 24 } 
	{ input_A_145_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ input_A_144_out sc_out sc_lv 32 signal 25 } 
	{ input_A_144_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ input_A_143_out sc_out sc_lv 32 signal 26 } 
	{ input_A_143_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ input_A_142_out sc_out sc_lv 32 signal 27 } 
	{ input_A_142_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ input_A_141_out sc_out sc_lv 32 signal 28 } 
	{ input_A_141_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ input_A_140_out sc_out sc_lv 32 signal 29 } 
	{ input_A_140_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ input_A_139_out sc_out sc_lv 32 signal 30 } 
	{ input_A_139_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ input_A_138_out sc_out sc_lv 32 signal 31 } 
	{ input_A_138_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ input_A_137_out sc_out sc_lv 32 signal 32 } 
	{ input_A_137_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ input_A_136_out sc_out sc_lv 32 signal 33 } 
	{ input_A_136_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ input_A_135_out sc_out sc_lv 32 signal 34 } 
	{ input_A_135_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ input_A_134_out sc_out sc_lv 32 signal 35 } 
	{ input_A_134_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ input_A_133_out sc_out sc_lv 32 signal 36 } 
	{ input_A_133_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ input_A_132_out sc_out sc_lv 32 signal 37 } 
	{ input_A_132_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ input_A_131_out sc_out sc_lv 32 signal 38 } 
	{ input_A_131_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ input_A_130_out sc_out sc_lv 32 signal 39 } 
	{ input_A_130_out_ap_vld sc_out sc_logic 1 outvld 39 } 
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
 	{ "name": "empty_259_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_259", "role": "i" }} , 
 	{ "name": "empty_259_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_259", "role": "o" }} , 
 	{ "name": "empty_259_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_259", "role": "o_ap_vld" }} , 
 	{ "name": "empty_260", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_260", "role": "default" }} , 
 	{ "name": "empty_260_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_260", "role": "ap_vld" }} , 
 	{ "name": "empty_261", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_261", "role": "default" }} , 
 	{ "name": "empty_261_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_261", "role": "ap_vld" }} , 
 	{ "name": "empty", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "empty_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty", "role": "ap_vld" }} , 
 	{ "name": "input_A_161_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_161_out", "role": "default" }} , 
 	{ "name": "input_A_161_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_161_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_160_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_160_out", "role": "default" }} , 
 	{ "name": "input_A_160_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_160_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_159_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_159_out", "role": "default" }} , 
 	{ "name": "input_A_159_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_159_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_158_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_158_out", "role": "default" }} , 
 	{ "name": "input_A_158_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_158_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_157_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_157_out", "role": "default" }} , 
 	{ "name": "input_A_157_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_157_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_156_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_156_out", "role": "default" }} , 
 	{ "name": "input_A_156_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_156_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_155_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_155_out", "role": "default" }} , 
 	{ "name": "input_A_155_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_155_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_154_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_154_out", "role": "default" }} , 
 	{ "name": "input_A_154_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_154_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_153_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_153_out", "role": "default" }} , 
 	{ "name": "input_A_153_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_153_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_152_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_152_out", "role": "default" }} , 
 	{ "name": "input_A_152_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_152_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_151_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_151_out", "role": "default" }} , 
 	{ "name": "input_A_151_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_151_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_150_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_150_out", "role": "default" }} , 
 	{ "name": "input_A_150_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_150_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_149_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_149_out", "role": "default" }} , 
 	{ "name": "input_A_149_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_149_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_148_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_148_out", "role": "default" }} , 
 	{ "name": "input_A_148_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_148_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_147_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_147_out", "role": "default" }} , 
 	{ "name": "input_A_147_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_147_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_146_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_146_out", "role": "default" }} , 
 	{ "name": "input_A_146_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_146_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_145_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_145_out", "role": "default" }} , 
 	{ "name": "input_A_145_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_145_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_144_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_144_out", "role": "default" }} , 
 	{ "name": "input_A_144_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_144_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_143_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_143_out", "role": "default" }} , 
 	{ "name": "input_A_143_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_143_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_142_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_142_out", "role": "default" }} , 
 	{ "name": "input_A_142_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_142_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_141_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_141_out", "role": "default" }} , 
 	{ "name": "input_A_141_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_141_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_140_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_140_out", "role": "default" }} , 
 	{ "name": "input_A_140_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_140_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_139_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_139_out", "role": "default" }} , 
 	{ "name": "input_A_139_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_139_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_138_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_138_out", "role": "default" }} , 
 	{ "name": "input_A_138_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_138_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_137_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_137_out", "role": "default" }} , 
 	{ "name": "input_A_137_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_137_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_136_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_136_out", "role": "default" }} , 
 	{ "name": "input_A_136_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_136_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_135_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_135_out", "role": "default" }} , 
 	{ "name": "input_A_135_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_135_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_134_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_134_out", "role": "default" }} , 
 	{ "name": "input_A_134_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_134_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_133_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_133_out", "role": "default" }} , 
 	{ "name": "input_A_133_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_133_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_132_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_132_out", "role": "default" }} , 
 	{ "name": "input_A_132_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_132_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_131_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_131_out", "role": "default" }} , 
 	{ "name": "input_A_131_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_131_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_130_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_130_out", "role": "default" }} , 
 	{ "name": "input_A_130_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_130_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrixmul_32_opt_Pipeline_loop_input_A22",
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
			{"Name" : "empty_259", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_260", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty_261", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_161_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_160_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_159_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_158_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_157_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_156_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_155_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_154_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_153_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_152_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_151_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_150_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_149_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_148_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_147_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_146_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_145_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_144_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_143_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_142_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_141_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_140_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_139_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_138_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_137_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_136_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_135_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_134_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_133_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_132_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_131_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_130_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_input_A2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_32_opt_Pipeline_loop_input_A22 {
		in_A_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_last_V {Type I LastRead 1 FirstWrite -1}
		empty_259 {Type IO LastRead 1 FirstWrite 1}
		empty_260 {Type O LastRead -1 FirstWrite 1}
		empty_261 {Type O LastRead -1 FirstWrite 1}
		empty {Type O LastRead -1 FirstWrite 1}
		input_A_161_out {Type O LastRead -1 FirstWrite 0}
		input_A_160_out {Type O LastRead -1 FirstWrite 0}
		input_A_159_out {Type O LastRead -1 FirstWrite 0}
		input_A_158_out {Type O LastRead -1 FirstWrite 0}
		input_A_157_out {Type O LastRead -1 FirstWrite 0}
		input_A_156_out {Type O LastRead -1 FirstWrite 0}
		input_A_155_out {Type O LastRead -1 FirstWrite 0}
		input_A_154_out {Type O LastRead -1 FirstWrite 0}
		input_A_153_out {Type O LastRead -1 FirstWrite 0}
		input_A_152_out {Type O LastRead -1 FirstWrite 0}
		input_A_151_out {Type O LastRead -1 FirstWrite 0}
		input_A_150_out {Type O LastRead -1 FirstWrite 0}
		input_A_149_out {Type O LastRead -1 FirstWrite 0}
		input_A_148_out {Type O LastRead -1 FirstWrite 0}
		input_A_147_out {Type O LastRead -1 FirstWrite 0}
		input_A_146_out {Type O LastRead -1 FirstWrite 0}
		input_A_145_out {Type O LastRead -1 FirstWrite 0}
		input_A_144_out {Type O LastRead -1 FirstWrite 0}
		input_A_143_out {Type O LastRead -1 FirstWrite 0}
		input_A_142_out {Type O LastRead -1 FirstWrite 0}
		input_A_141_out {Type O LastRead -1 FirstWrite 0}
		input_A_140_out {Type O LastRead -1 FirstWrite 0}
		input_A_139_out {Type O LastRead -1 FirstWrite 0}
		input_A_138_out {Type O LastRead -1 FirstWrite 0}
		input_A_137_out {Type O LastRead -1 FirstWrite 0}
		input_A_136_out {Type O LastRead -1 FirstWrite 0}
		input_A_135_out {Type O LastRead -1 FirstWrite 0}
		input_A_134_out {Type O LastRead -1 FirstWrite 0}
		input_A_133_out {Type O LastRead -1 FirstWrite 0}
		input_A_132_out {Type O LastRead -1 FirstWrite 0}
		input_A_131_out {Type O LastRead -1 FirstWrite 0}
		input_A_130_out {Type O LastRead -1 FirstWrite 0}}}

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
	empty_259 { ap_ovld {  { empty_259_i in_data 0 32 }  { empty_259_o out_data 1 32 }  { empty_259_o_ap_vld out_vld 1 1 } } }
	empty_260 { ap_vld {  { empty_260 out_data 1 4 }  { empty_260_ap_vld out_vld 1 1 } } }
	empty_261 { ap_vld {  { empty_261 out_data 1 4 }  { empty_261_ap_vld out_vld 1 1 } } }
	empty { ap_vld {  { empty out_data 1 1 }  { empty_ap_vld out_vld 1 1 } } }
	input_A_161_out { ap_vld {  { input_A_161_out out_data 1 32 }  { input_A_161_out_ap_vld out_vld 1 1 } } }
	input_A_160_out { ap_vld {  { input_A_160_out out_data 1 32 }  { input_A_160_out_ap_vld out_vld 1 1 } } }
	input_A_159_out { ap_vld {  { input_A_159_out out_data 1 32 }  { input_A_159_out_ap_vld out_vld 1 1 } } }
	input_A_158_out { ap_vld {  { input_A_158_out out_data 1 32 }  { input_A_158_out_ap_vld out_vld 1 1 } } }
	input_A_157_out { ap_vld {  { input_A_157_out out_data 1 32 }  { input_A_157_out_ap_vld out_vld 1 1 } } }
	input_A_156_out { ap_vld {  { input_A_156_out out_data 1 32 }  { input_A_156_out_ap_vld out_vld 1 1 } } }
	input_A_155_out { ap_vld {  { input_A_155_out out_data 1 32 }  { input_A_155_out_ap_vld out_vld 1 1 } } }
	input_A_154_out { ap_vld {  { input_A_154_out out_data 1 32 }  { input_A_154_out_ap_vld out_vld 1 1 } } }
	input_A_153_out { ap_vld {  { input_A_153_out out_data 1 32 }  { input_A_153_out_ap_vld out_vld 1 1 } } }
	input_A_152_out { ap_vld {  { input_A_152_out out_data 1 32 }  { input_A_152_out_ap_vld out_vld 1 1 } } }
	input_A_151_out { ap_vld {  { input_A_151_out out_data 1 32 }  { input_A_151_out_ap_vld out_vld 1 1 } } }
	input_A_150_out { ap_vld {  { input_A_150_out out_data 1 32 }  { input_A_150_out_ap_vld out_vld 1 1 } } }
	input_A_149_out { ap_vld {  { input_A_149_out out_data 1 32 }  { input_A_149_out_ap_vld out_vld 1 1 } } }
	input_A_148_out { ap_vld {  { input_A_148_out out_data 1 32 }  { input_A_148_out_ap_vld out_vld 1 1 } } }
	input_A_147_out { ap_vld {  { input_A_147_out out_data 1 32 }  { input_A_147_out_ap_vld out_vld 1 1 } } }
	input_A_146_out { ap_vld {  { input_A_146_out out_data 1 32 }  { input_A_146_out_ap_vld out_vld 1 1 } } }
	input_A_145_out { ap_vld {  { input_A_145_out out_data 1 32 }  { input_A_145_out_ap_vld out_vld 1 1 } } }
	input_A_144_out { ap_vld {  { input_A_144_out out_data 1 32 }  { input_A_144_out_ap_vld out_vld 1 1 } } }
	input_A_143_out { ap_vld {  { input_A_143_out out_data 1 32 }  { input_A_143_out_ap_vld out_vld 1 1 } } }
	input_A_142_out { ap_vld {  { input_A_142_out out_data 1 32 }  { input_A_142_out_ap_vld out_vld 1 1 } } }
	input_A_141_out { ap_vld {  { input_A_141_out out_data 1 32 }  { input_A_141_out_ap_vld out_vld 1 1 } } }
	input_A_140_out { ap_vld {  { input_A_140_out out_data 1 32 }  { input_A_140_out_ap_vld out_vld 1 1 } } }
	input_A_139_out { ap_vld {  { input_A_139_out out_data 1 32 }  { input_A_139_out_ap_vld out_vld 1 1 } } }
	input_A_138_out { ap_vld {  { input_A_138_out out_data 1 32 }  { input_A_138_out_ap_vld out_vld 1 1 } } }
	input_A_137_out { ap_vld {  { input_A_137_out out_data 1 32 }  { input_A_137_out_ap_vld out_vld 1 1 } } }
	input_A_136_out { ap_vld {  { input_A_136_out out_data 1 32 }  { input_A_136_out_ap_vld out_vld 1 1 } } }
	input_A_135_out { ap_vld {  { input_A_135_out out_data 1 32 }  { input_A_135_out_ap_vld out_vld 1 1 } } }
	input_A_134_out { ap_vld {  { input_A_134_out out_data 1 32 }  { input_A_134_out_ap_vld out_vld 1 1 } } }
	input_A_133_out { ap_vld {  { input_A_133_out out_data 1 32 }  { input_A_133_out_ap_vld out_vld 1 1 } } }
	input_A_132_out { ap_vld {  { input_A_132_out out_data 1 32 }  { input_A_132_out_ap_vld out_vld 1 1 } } }
	input_A_131_out { ap_vld {  { input_A_131_out out_data 1 32 }  { input_A_131_out_ap_vld out_vld 1 1 } } }
	input_A_130_out { ap_vld {  { input_A_130_out out_data 1 32 }  { input_A_130_out_ap_vld out_vld 1 1 } } }
}
