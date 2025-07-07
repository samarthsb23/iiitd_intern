set moduleName matrixmul_32_opt_Pipeline_loop_input_A23
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
set C_modelName {matrixmul_32_opt_Pipeline_loop_input_A23}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_A_V_data_V int 32 regular {axi_s 0 volatile  { in_A Data } }  }
	{ in_A_V_keep_V int 4 regular {axi_s 0 volatile  { in_A Keep } }  }
	{ in_A_V_strb_V int 4 regular {axi_s 0 volatile  { in_A Strb } }  }
	{ in_A_V_last_V int 1 regular {axi_s 0 volatile  { in_A Last } }  }
	{ empty_226 int 32 regular {pointer 2}  }
	{ empty_227 int 4 regular {pointer 1}  }
	{ empty_228 int 4 regular {pointer 1}  }
	{ empty int 1 regular {pointer 1}  }
	{ input_A_226_out float 32 regular {pointer 1}  }
	{ input_A_225_out float 32 regular {pointer 1}  }
	{ input_A_224_out float 32 regular {pointer 1}  }
	{ input_A_223_out float 32 regular {pointer 1}  }
	{ input_A_222_out float 32 regular {pointer 1}  }
	{ input_A_221_out float 32 regular {pointer 1}  }
	{ input_A_220_out float 32 regular {pointer 1}  }
	{ input_A_219_out float 32 regular {pointer 1}  }
	{ input_A_218_out float 32 regular {pointer 1}  }
	{ input_A_217_out float 32 regular {pointer 1}  }
	{ input_A_216_out float 32 regular {pointer 1}  }
	{ input_A_215_out float 32 regular {pointer 1}  }
	{ input_A_214_out float 32 regular {pointer 1}  }
	{ input_A_213_out float 32 regular {pointer 1}  }
	{ input_A_212_out float 32 regular {pointer 1}  }
	{ input_A_211_out float 32 regular {pointer 1}  }
	{ input_A_210_out float 32 regular {pointer 1}  }
	{ input_A_209_out float 32 regular {pointer 1}  }
	{ input_A_208_out float 32 regular {pointer 1}  }
	{ input_A_207_out float 32 regular {pointer 1}  }
	{ input_A_206_out float 32 regular {pointer 1}  }
	{ input_A_205_out float 32 regular {pointer 1}  }
	{ input_A_204_out float 32 regular {pointer 1}  }
	{ input_A_203_out float 32 regular {pointer 1}  }
	{ input_A_202_out float 32 regular {pointer 1}  }
	{ input_A_201_out float 32 regular {pointer 1}  }
	{ input_A_200_out float 32 regular {pointer 1}  }
	{ input_A_199_out float 32 regular {pointer 1}  }
	{ input_A_198_out float 32 regular {pointer 1}  }
	{ input_A_197_out float 32 regular {pointer 1}  }
	{ input_A_196_out float 32 regular {pointer 1}  }
	{ input_A_195_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_226", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_227", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_228", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_226_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_225_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_224_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_223_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_222_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_221_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_220_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_219_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_218_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_217_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_216_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_215_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_214_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_213_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_212_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_211_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_210_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_209_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_208_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_207_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_206_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_205_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_204_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_203_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_202_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_201_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_200_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_199_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_198_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_197_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_196_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_195_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ empty_226_i sc_in sc_lv 32 signal 4 } 
	{ empty_226_o sc_out sc_lv 32 signal 4 } 
	{ empty_226_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ empty_227 sc_out sc_lv 4 signal 5 } 
	{ empty_227_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ empty_228 sc_out sc_lv 4 signal 6 } 
	{ empty_228_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ empty sc_out sc_lv 1 signal 7 } 
	{ empty_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_A_226_out sc_out sc_lv 32 signal 8 } 
	{ input_A_226_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_A_225_out sc_out sc_lv 32 signal 9 } 
	{ input_A_225_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ input_A_224_out sc_out sc_lv 32 signal 10 } 
	{ input_A_224_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_A_223_out sc_out sc_lv 32 signal 11 } 
	{ input_A_223_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ input_A_222_out sc_out sc_lv 32 signal 12 } 
	{ input_A_222_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ input_A_221_out sc_out sc_lv 32 signal 13 } 
	{ input_A_221_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ input_A_220_out sc_out sc_lv 32 signal 14 } 
	{ input_A_220_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ input_A_219_out sc_out sc_lv 32 signal 15 } 
	{ input_A_219_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ input_A_218_out sc_out sc_lv 32 signal 16 } 
	{ input_A_218_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ input_A_217_out sc_out sc_lv 32 signal 17 } 
	{ input_A_217_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ input_A_216_out sc_out sc_lv 32 signal 18 } 
	{ input_A_216_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ input_A_215_out sc_out sc_lv 32 signal 19 } 
	{ input_A_215_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ input_A_214_out sc_out sc_lv 32 signal 20 } 
	{ input_A_214_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ input_A_213_out sc_out sc_lv 32 signal 21 } 
	{ input_A_213_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ input_A_212_out sc_out sc_lv 32 signal 22 } 
	{ input_A_212_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ input_A_211_out sc_out sc_lv 32 signal 23 } 
	{ input_A_211_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ input_A_210_out sc_out sc_lv 32 signal 24 } 
	{ input_A_210_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ input_A_209_out sc_out sc_lv 32 signal 25 } 
	{ input_A_209_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ input_A_208_out sc_out sc_lv 32 signal 26 } 
	{ input_A_208_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ input_A_207_out sc_out sc_lv 32 signal 27 } 
	{ input_A_207_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ input_A_206_out sc_out sc_lv 32 signal 28 } 
	{ input_A_206_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ input_A_205_out sc_out sc_lv 32 signal 29 } 
	{ input_A_205_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ input_A_204_out sc_out sc_lv 32 signal 30 } 
	{ input_A_204_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ input_A_203_out sc_out sc_lv 32 signal 31 } 
	{ input_A_203_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ input_A_202_out sc_out sc_lv 32 signal 32 } 
	{ input_A_202_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ input_A_201_out sc_out sc_lv 32 signal 33 } 
	{ input_A_201_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ input_A_200_out sc_out sc_lv 32 signal 34 } 
	{ input_A_200_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ input_A_199_out sc_out sc_lv 32 signal 35 } 
	{ input_A_199_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ input_A_198_out sc_out sc_lv 32 signal 36 } 
	{ input_A_198_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ input_A_197_out sc_out sc_lv 32 signal 37 } 
	{ input_A_197_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ input_A_196_out sc_out sc_lv 32 signal 38 } 
	{ input_A_196_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ input_A_195_out sc_out sc_lv 32 signal 39 } 
	{ input_A_195_out_ap_vld sc_out sc_logic 1 outvld 39 } 
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
 	{ "name": "empty_226_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_226", "role": "i" }} , 
 	{ "name": "empty_226_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_226", "role": "o" }} , 
 	{ "name": "empty_226_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_226", "role": "o_ap_vld" }} , 
 	{ "name": "empty_227", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_227", "role": "default" }} , 
 	{ "name": "empty_227_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_227", "role": "ap_vld" }} , 
 	{ "name": "empty_228", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_228", "role": "default" }} , 
 	{ "name": "empty_228_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_228", "role": "ap_vld" }} , 
 	{ "name": "empty", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "empty_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty", "role": "ap_vld" }} , 
 	{ "name": "input_A_226_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_226_out", "role": "default" }} , 
 	{ "name": "input_A_226_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_226_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_225_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_225_out", "role": "default" }} , 
 	{ "name": "input_A_225_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_225_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_224_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_224_out", "role": "default" }} , 
 	{ "name": "input_A_224_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_224_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_223_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_223_out", "role": "default" }} , 
 	{ "name": "input_A_223_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_223_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_222_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_222_out", "role": "default" }} , 
 	{ "name": "input_A_222_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_222_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_221_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_221_out", "role": "default" }} , 
 	{ "name": "input_A_221_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_221_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_220_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_220_out", "role": "default" }} , 
 	{ "name": "input_A_220_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_220_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_219_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_219_out", "role": "default" }} , 
 	{ "name": "input_A_219_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_219_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_218_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_218_out", "role": "default" }} , 
 	{ "name": "input_A_218_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_218_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_217_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_217_out", "role": "default" }} , 
 	{ "name": "input_A_217_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_217_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_216_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_216_out", "role": "default" }} , 
 	{ "name": "input_A_216_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_216_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_215_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_215_out", "role": "default" }} , 
 	{ "name": "input_A_215_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_215_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_214_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_214_out", "role": "default" }} , 
 	{ "name": "input_A_214_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_214_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_213_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_213_out", "role": "default" }} , 
 	{ "name": "input_A_213_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_213_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_212_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_212_out", "role": "default" }} , 
 	{ "name": "input_A_212_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_212_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_211_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_211_out", "role": "default" }} , 
 	{ "name": "input_A_211_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_211_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_210_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_210_out", "role": "default" }} , 
 	{ "name": "input_A_210_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_210_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_209_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_209_out", "role": "default" }} , 
 	{ "name": "input_A_209_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_209_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_208_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_208_out", "role": "default" }} , 
 	{ "name": "input_A_208_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_208_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_207_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_207_out", "role": "default" }} , 
 	{ "name": "input_A_207_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_207_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_206_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_206_out", "role": "default" }} , 
 	{ "name": "input_A_206_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_206_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_205_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_205_out", "role": "default" }} , 
 	{ "name": "input_A_205_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_205_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_204_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_204_out", "role": "default" }} , 
 	{ "name": "input_A_204_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_204_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_203_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_203_out", "role": "default" }} , 
 	{ "name": "input_A_203_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_203_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_202_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_202_out", "role": "default" }} , 
 	{ "name": "input_A_202_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_202_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_201_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_201_out", "role": "default" }} , 
 	{ "name": "input_A_201_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_201_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_200_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_200_out", "role": "default" }} , 
 	{ "name": "input_A_200_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_200_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_199_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_199_out", "role": "default" }} , 
 	{ "name": "input_A_199_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_199_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_198_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_198_out", "role": "default" }} , 
 	{ "name": "input_A_198_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_198_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_197_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_197_out", "role": "default" }} , 
 	{ "name": "input_A_197_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_197_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_196_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_196_out", "role": "default" }} , 
 	{ "name": "input_A_196_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_196_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_195_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_195_out", "role": "default" }} , 
 	{ "name": "input_A_195_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_195_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrixmul_32_opt_Pipeline_loop_input_A23",
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
			{"Name" : "empty_226", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_227", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty_228", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_226_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_225_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_224_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_223_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_222_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_221_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_220_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_219_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_218_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_217_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_216_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_215_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_214_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_213_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_212_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_211_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_210_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_209_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_208_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_207_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_206_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_205_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_204_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_203_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_202_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_201_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_200_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_199_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_198_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_197_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_196_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_195_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_input_A2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_32_opt_Pipeline_loop_input_A23 {
		in_A_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_last_V {Type I LastRead 1 FirstWrite -1}
		empty_226 {Type IO LastRead 1 FirstWrite 1}
		empty_227 {Type O LastRead -1 FirstWrite 1}
		empty_228 {Type O LastRead -1 FirstWrite 1}
		empty {Type O LastRead -1 FirstWrite 1}
		input_A_226_out {Type O LastRead -1 FirstWrite 0}
		input_A_225_out {Type O LastRead -1 FirstWrite 0}
		input_A_224_out {Type O LastRead -1 FirstWrite 0}
		input_A_223_out {Type O LastRead -1 FirstWrite 0}
		input_A_222_out {Type O LastRead -1 FirstWrite 0}
		input_A_221_out {Type O LastRead -1 FirstWrite 0}
		input_A_220_out {Type O LastRead -1 FirstWrite 0}
		input_A_219_out {Type O LastRead -1 FirstWrite 0}
		input_A_218_out {Type O LastRead -1 FirstWrite 0}
		input_A_217_out {Type O LastRead -1 FirstWrite 0}
		input_A_216_out {Type O LastRead -1 FirstWrite 0}
		input_A_215_out {Type O LastRead -1 FirstWrite 0}
		input_A_214_out {Type O LastRead -1 FirstWrite 0}
		input_A_213_out {Type O LastRead -1 FirstWrite 0}
		input_A_212_out {Type O LastRead -1 FirstWrite 0}
		input_A_211_out {Type O LastRead -1 FirstWrite 0}
		input_A_210_out {Type O LastRead -1 FirstWrite 0}
		input_A_209_out {Type O LastRead -1 FirstWrite 0}
		input_A_208_out {Type O LastRead -1 FirstWrite 0}
		input_A_207_out {Type O LastRead -1 FirstWrite 0}
		input_A_206_out {Type O LastRead -1 FirstWrite 0}
		input_A_205_out {Type O LastRead -1 FirstWrite 0}
		input_A_204_out {Type O LastRead -1 FirstWrite 0}
		input_A_203_out {Type O LastRead -1 FirstWrite 0}
		input_A_202_out {Type O LastRead -1 FirstWrite 0}
		input_A_201_out {Type O LastRead -1 FirstWrite 0}
		input_A_200_out {Type O LastRead -1 FirstWrite 0}
		input_A_199_out {Type O LastRead -1 FirstWrite 0}
		input_A_198_out {Type O LastRead -1 FirstWrite 0}
		input_A_197_out {Type O LastRead -1 FirstWrite 0}
		input_A_196_out {Type O LastRead -1 FirstWrite 0}
		input_A_195_out {Type O LastRead -1 FirstWrite 0}}}

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
	empty_226 { ap_ovld {  { empty_226_i in_data 0 32 }  { empty_226_o out_data 1 32 }  { empty_226_o_ap_vld out_vld 1 1 } } }
	empty_227 { ap_vld {  { empty_227 out_data 1 4 }  { empty_227_ap_vld out_vld 1 1 } } }
	empty_228 { ap_vld {  { empty_228 out_data 1 4 }  { empty_228_ap_vld out_vld 1 1 } } }
	empty { ap_vld {  { empty out_data 1 1 }  { empty_ap_vld out_vld 1 1 } } }
	input_A_226_out { ap_vld {  { input_A_226_out out_data 1 32 }  { input_A_226_out_ap_vld out_vld 1 1 } } }
	input_A_225_out { ap_vld {  { input_A_225_out out_data 1 32 }  { input_A_225_out_ap_vld out_vld 1 1 } } }
	input_A_224_out { ap_vld {  { input_A_224_out out_data 1 32 }  { input_A_224_out_ap_vld out_vld 1 1 } } }
	input_A_223_out { ap_vld {  { input_A_223_out out_data 1 32 }  { input_A_223_out_ap_vld out_vld 1 1 } } }
	input_A_222_out { ap_vld {  { input_A_222_out out_data 1 32 }  { input_A_222_out_ap_vld out_vld 1 1 } } }
	input_A_221_out { ap_vld {  { input_A_221_out out_data 1 32 }  { input_A_221_out_ap_vld out_vld 1 1 } } }
	input_A_220_out { ap_vld {  { input_A_220_out out_data 1 32 }  { input_A_220_out_ap_vld out_vld 1 1 } } }
	input_A_219_out { ap_vld {  { input_A_219_out out_data 1 32 }  { input_A_219_out_ap_vld out_vld 1 1 } } }
	input_A_218_out { ap_vld {  { input_A_218_out out_data 1 32 }  { input_A_218_out_ap_vld out_vld 1 1 } } }
	input_A_217_out { ap_vld {  { input_A_217_out out_data 1 32 }  { input_A_217_out_ap_vld out_vld 1 1 } } }
	input_A_216_out { ap_vld {  { input_A_216_out out_data 1 32 }  { input_A_216_out_ap_vld out_vld 1 1 } } }
	input_A_215_out { ap_vld {  { input_A_215_out out_data 1 32 }  { input_A_215_out_ap_vld out_vld 1 1 } } }
	input_A_214_out { ap_vld {  { input_A_214_out out_data 1 32 }  { input_A_214_out_ap_vld out_vld 1 1 } } }
	input_A_213_out { ap_vld {  { input_A_213_out out_data 1 32 }  { input_A_213_out_ap_vld out_vld 1 1 } } }
	input_A_212_out { ap_vld {  { input_A_212_out out_data 1 32 }  { input_A_212_out_ap_vld out_vld 1 1 } } }
	input_A_211_out { ap_vld {  { input_A_211_out out_data 1 32 }  { input_A_211_out_ap_vld out_vld 1 1 } } }
	input_A_210_out { ap_vld {  { input_A_210_out out_data 1 32 }  { input_A_210_out_ap_vld out_vld 1 1 } } }
	input_A_209_out { ap_vld {  { input_A_209_out out_data 1 32 }  { input_A_209_out_ap_vld out_vld 1 1 } } }
	input_A_208_out { ap_vld {  { input_A_208_out out_data 1 32 }  { input_A_208_out_ap_vld out_vld 1 1 } } }
	input_A_207_out { ap_vld {  { input_A_207_out out_data 1 32 }  { input_A_207_out_ap_vld out_vld 1 1 } } }
	input_A_206_out { ap_vld {  { input_A_206_out out_data 1 32 }  { input_A_206_out_ap_vld out_vld 1 1 } } }
	input_A_205_out { ap_vld {  { input_A_205_out out_data 1 32 }  { input_A_205_out_ap_vld out_vld 1 1 } } }
	input_A_204_out { ap_vld {  { input_A_204_out out_data 1 32 }  { input_A_204_out_ap_vld out_vld 1 1 } } }
	input_A_203_out { ap_vld {  { input_A_203_out out_data 1 32 }  { input_A_203_out_ap_vld out_vld 1 1 } } }
	input_A_202_out { ap_vld {  { input_A_202_out out_data 1 32 }  { input_A_202_out_ap_vld out_vld 1 1 } } }
	input_A_201_out { ap_vld {  { input_A_201_out out_data 1 32 }  { input_A_201_out_ap_vld out_vld 1 1 } } }
	input_A_200_out { ap_vld {  { input_A_200_out out_data 1 32 }  { input_A_200_out_ap_vld out_vld 1 1 } } }
	input_A_199_out { ap_vld {  { input_A_199_out out_data 1 32 }  { input_A_199_out_ap_vld out_vld 1 1 } } }
	input_A_198_out { ap_vld {  { input_A_198_out out_data 1 32 }  { input_A_198_out_ap_vld out_vld 1 1 } } }
	input_A_197_out { ap_vld {  { input_A_197_out out_data 1 32 }  { input_A_197_out_ap_vld out_vld 1 1 } } }
	input_A_196_out { ap_vld {  { input_A_196_out out_data 1 32 }  { input_A_196_out_ap_vld out_vld 1 1 } } }
	input_A_195_out { ap_vld {  { input_A_195_out out_data 1 32 }  { input_A_195_out_ap_vld out_vld 1 1 } } }
}
