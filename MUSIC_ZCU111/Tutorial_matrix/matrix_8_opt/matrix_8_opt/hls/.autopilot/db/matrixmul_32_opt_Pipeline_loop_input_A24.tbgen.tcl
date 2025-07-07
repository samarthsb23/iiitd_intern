set moduleName matrixmul_32_opt_Pipeline_loop_input_A24
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
set C_modelName {matrixmul_32_opt_Pipeline_loop_input_A24}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_A_V_data_V int 32 regular {axi_s 0 volatile  { in_A Data } }  }
	{ in_A_V_keep_V int 4 regular {axi_s 0 volatile  { in_A Keep } }  }
	{ in_A_V_strb_V int 4 regular {axi_s 0 volatile  { in_A Strb } }  }
	{ in_A_V_last_V int 1 regular {axi_s 0 volatile  { in_A Last } }  }
	{ empty_217 int 32 regular {pointer 2}  }
	{ empty_218 int 4 regular {pointer 1}  }
	{ empty_219 int 4 regular {pointer 1}  }
	{ empty int 1 regular {pointer 1}  }
	{ input_A_291_out float 32 regular {pointer 1}  }
	{ input_A_290_out float 32 regular {pointer 1}  }
	{ input_A_289_out float 32 regular {pointer 1}  }
	{ input_A_288_out float 32 regular {pointer 1}  }
	{ input_A_287_out float 32 regular {pointer 1}  }
	{ input_A_286_out float 32 regular {pointer 1}  }
	{ input_A_285_out float 32 regular {pointer 1}  }
	{ input_A_284_out float 32 regular {pointer 1}  }
	{ input_A_283_out float 32 regular {pointer 1}  }
	{ input_A_282_out float 32 regular {pointer 1}  }
	{ input_A_281_out float 32 regular {pointer 1}  }
	{ input_A_280_out float 32 regular {pointer 1}  }
	{ input_A_279_out float 32 regular {pointer 1}  }
	{ input_A_278_out float 32 regular {pointer 1}  }
	{ input_A_277_out float 32 regular {pointer 1}  }
	{ input_A_276_out float 32 regular {pointer 1}  }
	{ input_A_275_out float 32 regular {pointer 1}  }
	{ input_A_274_out float 32 regular {pointer 1}  }
	{ input_A_273_out float 32 regular {pointer 1}  }
	{ input_A_272_out float 32 regular {pointer 1}  }
	{ input_A_271_out float 32 regular {pointer 1}  }
	{ input_A_270_out float 32 regular {pointer 1}  }
	{ input_A_269_out float 32 regular {pointer 1}  }
	{ input_A_268_out float 32 regular {pointer 1}  }
	{ input_A_267_out float 32 regular {pointer 1}  }
	{ input_A_266_out float 32 regular {pointer 1}  }
	{ input_A_265_out float 32 regular {pointer 1}  }
	{ input_A_264_out float 32 regular {pointer 1}  }
	{ input_A_263_out float 32 regular {pointer 1}  }
	{ input_A_262_out float 32 regular {pointer 1}  }
	{ input_A_261_out float 32 regular {pointer 1}  }
	{ input_A_260_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_217", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_218", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_219", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_291_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_290_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_289_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_288_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_287_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_286_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_285_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_284_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_283_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_282_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_281_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_280_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_279_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_278_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_277_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_276_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_275_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_274_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_273_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_272_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_271_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_270_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_269_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_268_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_267_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_266_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_265_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_264_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_263_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_262_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_261_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_260_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ empty_217_i sc_in sc_lv 32 signal 4 } 
	{ empty_217_o sc_out sc_lv 32 signal 4 } 
	{ empty_217_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ empty_218 sc_out sc_lv 4 signal 5 } 
	{ empty_218_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ empty_219 sc_out sc_lv 4 signal 6 } 
	{ empty_219_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ empty sc_out sc_lv 1 signal 7 } 
	{ empty_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_A_291_out sc_out sc_lv 32 signal 8 } 
	{ input_A_291_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_A_290_out sc_out sc_lv 32 signal 9 } 
	{ input_A_290_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ input_A_289_out sc_out sc_lv 32 signal 10 } 
	{ input_A_289_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_A_288_out sc_out sc_lv 32 signal 11 } 
	{ input_A_288_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ input_A_287_out sc_out sc_lv 32 signal 12 } 
	{ input_A_287_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ input_A_286_out sc_out sc_lv 32 signal 13 } 
	{ input_A_286_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ input_A_285_out sc_out sc_lv 32 signal 14 } 
	{ input_A_285_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ input_A_284_out sc_out sc_lv 32 signal 15 } 
	{ input_A_284_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ input_A_283_out sc_out sc_lv 32 signal 16 } 
	{ input_A_283_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ input_A_282_out sc_out sc_lv 32 signal 17 } 
	{ input_A_282_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ input_A_281_out sc_out sc_lv 32 signal 18 } 
	{ input_A_281_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ input_A_280_out sc_out sc_lv 32 signal 19 } 
	{ input_A_280_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ input_A_279_out sc_out sc_lv 32 signal 20 } 
	{ input_A_279_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ input_A_278_out sc_out sc_lv 32 signal 21 } 
	{ input_A_278_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ input_A_277_out sc_out sc_lv 32 signal 22 } 
	{ input_A_277_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ input_A_276_out sc_out sc_lv 32 signal 23 } 
	{ input_A_276_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ input_A_275_out sc_out sc_lv 32 signal 24 } 
	{ input_A_275_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ input_A_274_out sc_out sc_lv 32 signal 25 } 
	{ input_A_274_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ input_A_273_out sc_out sc_lv 32 signal 26 } 
	{ input_A_273_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ input_A_272_out sc_out sc_lv 32 signal 27 } 
	{ input_A_272_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ input_A_271_out sc_out sc_lv 32 signal 28 } 
	{ input_A_271_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ input_A_270_out sc_out sc_lv 32 signal 29 } 
	{ input_A_270_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ input_A_269_out sc_out sc_lv 32 signal 30 } 
	{ input_A_269_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ input_A_268_out sc_out sc_lv 32 signal 31 } 
	{ input_A_268_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ input_A_267_out sc_out sc_lv 32 signal 32 } 
	{ input_A_267_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ input_A_266_out sc_out sc_lv 32 signal 33 } 
	{ input_A_266_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ input_A_265_out sc_out sc_lv 32 signal 34 } 
	{ input_A_265_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ input_A_264_out sc_out sc_lv 32 signal 35 } 
	{ input_A_264_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ input_A_263_out sc_out sc_lv 32 signal 36 } 
	{ input_A_263_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ input_A_262_out sc_out sc_lv 32 signal 37 } 
	{ input_A_262_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ input_A_261_out sc_out sc_lv 32 signal 38 } 
	{ input_A_261_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ input_A_260_out sc_out sc_lv 32 signal 39 } 
	{ input_A_260_out_ap_vld sc_out sc_logic 1 outvld 39 } 
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
 	{ "name": "empty_217_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_217", "role": "i" }} , 
 	{ "name": "empty_217_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_217", "role": "o" }} , 
 	{ "name": "empty_217_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_217", "role": "o_ap_vld" }} , 
 	{ "name": "empty_218", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_218", "role": "default" }} , 
 	{ "name": "empty_218_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_218", "role": "ap_vld" }} , 
 	{ "name": "empty_219", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_219", "role": "default" }} , 
 	{ "name": "empty_219_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_219", "role": "ap_vld" }} , 
 	{ "name": "empty", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "empty_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty", "role": "ap_vld" }} , 
 	{ "name": "input_A_291_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_291_out", "role": "default" }} , 
 	{ "name": "input_A_291_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_291_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_290_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_290_out", "role": "default" }} , 
 	{ "name": "input_A_290_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_290_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_289_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_289_out", "role": "default" }} , 
 	{ "name": "input_A_289_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_289_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_288_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_288_out", "role": "default" }} , 
 	{ "name": "input_A_288_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_288_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_287_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_287_out", "role": "default" }} , 
 	{ "name": "input_A_287_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_287_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_286_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_286_out", "role": "default" }} , 
 	{ "name": "input_A_286_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_286_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_285_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_285_out", "role": "default" }} , 
 	{ "name": "input_A_285_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_285_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_284_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_284_out", "role": "default" }} , 
 	{ "name": "input_A_284_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_284_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_283_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_283_out", "role": "default" }} , 
 	{ "name": "input_A_283_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_283_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_282_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_282_out", "role": "default" }} , 
 	{ "name": "input_A_282_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_282_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_281_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_281_out", "role": "default" }} , 
 	{ "name": "input_A_281_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_281_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_280_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_280_out", "role": "default" }} , 
 	{ "name": "input_A_280_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_280_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_279_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_279_out", "role": "default" }} , 
 	{ "name": "input_A_279_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_279_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_278_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_278_out", "role": "default" }} , 
 	{ "name": "input_A_278_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_278_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_277_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_277_out", "role": "default" }} , 
 	{ "name": "input_A_277_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_277_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_276_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_276_out", "role": "default" }} , 
 	{ "name": "input_A_276_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_276_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_275_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_275_out", "role": "default" }} , 
 	{ "name": "input_A_275_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_275_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_274_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_274_out", "role": "default" }} , 
 	{ "name": "input_A_274_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_274_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_273_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_273_out", "role": "default" }} , 
 	{ "name": "input_A_273_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_273_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_272_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_272_out", "role": "default" }} , 
 	{ "name": "input_A_272_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_272_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_271_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_271_out", "role": "default" }} , 
 	{ "name": "input_A_271_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_271_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_270_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_270_out", "role": "default" }} , 
 	{ "name": "input_A_270_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_270_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_269_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_269_out", "role": "default" }} , 
 	{ "name": "input_A_269_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_269_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_268_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_268_out", "role": "default" }} , 
 	{ "name": "input_A_268_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_268_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_267_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_267_out", "role": "default" }} , 
 	{ "name": "input_A_267_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_267_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_266_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_266_out", "role": "default" }} , 
 	{ "name": "input_A_266_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_266_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_265_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_265_out", "role": "default" }} , 
 	{ "name": "input_A_265_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_265_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_264_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_264_out", "role": "default" }} , 
 	{ "name": "input_A_264_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_264_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_263_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_263_out", "role": "default" }} , 
 	{ "name": "input_A_263_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_263_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_262_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_262_out", "role": "default" }} , 
 	{ "name": "input_A_262_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_262_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_261_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_261_out", "role": "default" }} , 
 	{ "name": "input_A_261_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_261_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_260_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_260_out", "role": "default" }} , 
 	{ "name": "input_A_260_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_260_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrixmul_32_opt_Pipeline_loop_input_A24",
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
			{"Name" : "empty_217", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_218", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty_219", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_291_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_290_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_289_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_288_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_287_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_286_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_285_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_284_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_283_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_282_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_281_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_280_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_279_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_278_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_277_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_276_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_275_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_274_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_273_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_272_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_271_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_270_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_269_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_268_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_267_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_266_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_265_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_264_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_263_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_262_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_261_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_260_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_input_A2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_32_opt_Pipeline_loop_input_A24 {
		in_A_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_last_V {Type I LastRead 1 FirstWrite -1}
		empty_217 {Type IO LastRead 1 FirstWrite 1}
		empty_218 {Type O LastRead -1 FirstWrite 1}
		empty_219 {Type O LastRead -1 FirstWrite 1}
		empty {Type O LastRead -1 FirstWrite 1}
		input_A_291_out {Type O LastRead -1 FirstWrite 0}
		input_A_290_out {Type O LastRead -1 FirstWrite 0}
		input_A_289_out {Type O LastRead -1 FirstWrite 0}
		input_A_288_out {Type O LastRead -1 FirstWrite 0}
		input_A_287_out {Type O LastRead -1 FirstWrite 0}
		input_A_286_out {Type O LastRead -1 FirstWrite 0}
		input_A_285_out {Type O LastRead -1 FirstWrite 0}
		input_A_284_out {Type O LastRead -1 FirstWrite 0}
		input_A_283_out {Type O LastRead -1 FirstWrite 0}
		input_A_282_out {Type O LastRead -1 FirstWrite 0}
		input_A_281_out {Type O LastRead -1 FirstWrite 0}
		input_A_280_out {Type O LastRead -1 FirstWrite 0}
		input_A_279_out {Type O LastRead -1 FirstWrite 0}
		input_A_278_out {Type O LastRead -1 FirstWrite 0}
		input_A_277_out {Type O LastRead -1 FirstWrite 0}
		input_A_276_out {Type O LastRead -1 FirstWrite 0}
		input_A_275_out {Type O LastRead -1 FirstWrite 0}
		input_A_274_out {Type O LastRead -1 FirstWrite 0}
		input_A_273_out {Type O LastRead -1 FirstWrite 0}
		input_A_272_out {Type O LastRead -1 FirstWrite 0}
		input_A_271_out {Type O LastRead -1 FirstWrite 0}
		input_A_270_out {Type O LastRead -1 FirstWrite 0}
		input_A_269_out {Type O LastRead -1 FirstWrite 0}
		input_A_268_out {Type O LastRead -1 FirstWrite 0}
		input_A_267_out {Type O LastRead -1 FirstWrite 0}
		input_A_266_out {Type O LastRead -1 FirstWrite 0}
		input_A_265_out {Type O LastRead -1 FirstWrite 0}
		input_A_264_out {Type O LastRead -1 FirstWrite 0}
		input_A_263_out {Type O LastRead -1 FirstWrite 0}
		input_A_262_out {Type O LastRead -1 FirstWrite 0}
		input_A_261_out {Type O LastRead -1 FirstWrite 0}
		input_A_260_out {Type O LastRead -1 FirstWrite 0}}}

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
	empty_217 { ap_ovld {  { empty_217_i in_data 0 32 }  { empty_217_o out_data 1 32 }  { empty_217_o_ap_vld out_vld 1 1 } } }
	empty_218 { ap_vld {  { empty_218 out_data 1 4 }  { empty_218_ap_vld out_vld 1 1 } } }
	empty_219 { ap_vld {  { empty_219 out_data 1 4 }  { empty_219_ap_vld out_vld 1 1 } } }
	empty { ap_vld {  { empty out_data 1 1 }  { empty_ap_vld out_vld 1 1 } } }
	input_A_291_out { ap_vld {  { input_A_291_out out_data 1 32 }  { input_A_291_out_ap_vld out_vld 1 1 } } }
	input_A_290_out { ap_vld {  { input_A_290_out out_data 1 32 }  { input_A_290_out_ap_vld out_vld 1 1 } } }
	input_A_289_out { ap_vld {  { input_A_289_out out_data 1 32 }  { input_A_289_out_ap_vld out_vld 1 1 } } }
	input_A_288_out { ap_vld {  { input_A_288_out out_data 1 32 }  { input_A_288_out_ap_vld out_vld 1 1 } } }
	input_A_287_out { ap_vld {  { input_A_287_out out_data 1 32 }  { input_A_287_out_ap_vld out_vld 1 1 } } }
	input_A_286_out { ap_vld {  { input_A_286_out out_data 1 32 }  { input_A_286_out_ap_vld out_vld 1 1 } } }
	input_A_285_out { ap_vld {  { input_A_285_out out_data 1 32 }  { input_A_285_out_ap_vld out_vld 1 1 } } }
	input_A_284_out { ap_vld {  { input_A_284_out out_data 1 32 }  { input_A_284_out_ap_vld out_vld 1 1 } } }
	input_A_283_out { ap_vld {  { input_A_283_out out_data 1 32 }  { input_A_283_out_ap_vld out_vld 1 1 } } }
	input_A_282_out { ap_vld {  { input_A_282_out out_data 1 32 }  { input_A_282_out_ap_vld out_vld 1 1 } } }
	input_A_281_out { ap_vld {  { input_A_281_out out_data 1 32 }  { input_A_281_out_ap_vld out_vld 1 1 } } }
	input_A_280_out { ap_vld {  { input_A_280_out out_data 1 32 }  { input_A_280_out_ap_vld out_vld 1 1 } } }
	input_A_279_out { ap_vld {  { input_A_279_out out_data 1 32 }  { input_A_279_out_ap_vld out_vld 1 1 } } }
	input_A_278_out { ap_vld {  { input_A_278_out out_data 1 32 }  { input_A_278_out_ap_vld out_vld 1 1 } } }
	input_A_277_out { ap_vld {  { input_A_277_out out_data 1 32 }  { input_A_277_out_ap_vld out_vld 1 1 } } }
	input_A_276_out { ap_vld {  { input_A_276_out out_data 1 32 }  { input_A_276_out_ap_vld out_vld 1 1 } } }
	input_A_275_out { ap_vld {  { input_A_275_out out_data 1 32 }  { input_A_275_out_ap_vld out_vld 1 1 } } }
	input_A_274_out { ap_vld {  { input_A_274_out out_data 1 32 }  { input_A_274_out_ap_vld out_vld 1 1 } } }
	input_A_273_out { ap_vld {  { input_A_273_out out_data 1 32 }  { input_A_273_out_ap_vld out_vld 1 1 } } }
	input_A_272_out { ap_vld {  { input_A_272_out out_data 1 32 }  { input_A_272_out_ap_vld out_vld 1 1 } } }
	input_A_271_out { ap_vld {  { input_A_271_out out_data 1 32 }  { input_A_271_out_ap_vld out_vld 1 1 } } }
	input_A_270_out { ap_vld {  { input_A_270_out out_data 1 32 }  { input_A_270_out_ap_vld out_vld 1 1 } } }
	input_A_269_out { ap_vld {  { input_A_269_out out_data 1 32 }  { input_A_269_out_ap_vld out_vld 1 1 } } }
	input_A_268_out { ap_vld {  { input_A_268_out out_data 1 32 }  { input_A_268_out_ap_vld out_vld 1 1 } } }
	input_A_267_out { ap_vld {  { input_A_267_out out_data 1 32 }  { input_A_267_out_ap_vld out_vld 1 1 } } }
	input_A_266_out { ap_vld {  { input_A_266_out out_data 1 32 }  { input_A_266_out_ap_vld out_vld 1 1 } } }
	input_A_265_out { ap_vld {  { input_A_265_out out_data 1 32 }  { input_A_265_out_ap_vld out_vld 1 1 } } }
	input_A_264_out { ap_vld {  { input_A_264_out out_data 1 32 }  { input_A_264_out_ap_vld out_vld 1 1 } } }
	input_A_263_out { ap_vld {  { input_A_263_out out_data 1 32 }  { input_A_263_out_ap_vld out_vld 1 1 } } }
	input_A_262_out { ap_vld {  { input_A_262_out out_data 1 32 }  { input_A_262_out_ap_vld out_vld 1 1 } } }
	input_A_261_out { ap_vld {  { input_A_261_out out_data 1 32 }  { input_A_261_out_ap_vld out_vld 1 1 } } }
	input_A_260_out { ap_vld {  { input_A_260_out out_data 1 32 }  { input_A_260_out_ap_vld out_vld 1 1 } } }
}
