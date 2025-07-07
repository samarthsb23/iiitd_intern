set moduleName matrixmul_32_opt_Pipeline_loop_input_A229
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
set C_modelName {matrixmul_32_opt_Pipeline_loop_input_A229}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_A_V_data_V int 32 regular {axi_s 0 volatile  { in_A Data } }  }
	{ in_A_V_keep_V int 4 regular {axi_s 0 volatile  { in_A Keep } }  }
	{ in_A_V_strb_V int 4 regular {axi_s 0 volatile  { in_A Strb } }  }
	{ in_A_V_last_V int 1 regular {axi_s 0 volatile  { in_A Last } }  }
	{ empty_229 int 32 regular {pointer 2}  }
	{ empty_230 int 4 regular {pointer 1}  }
	{ empty_231 int 4 regular {pointer 1}  }
	{ empty int 1 regular {pointer 1}  }
	{ input_A_444_out float 32 regular {pointer 1}  }
	{ input_A_443_out float 32 regular {pointer 1}  }
	{ input_A_442_out float 32 regular {pointer 1}  }
	{ input_A_441_out float 32 regular {pointer 1}  }
	{ input_A_440_out float 32 regular {pointer 1}  }
	{ input_A_439_out float 32 regular {pointer 1}  }
	{ input_A_438_out float 32 regular {pointer 1}  }
	{ input_A_437_out float 32 regular {pointer 1}  }
	{ input_A_436_out float 32 regular {pointer 1}  }
	{ input_A_435_out float 32 regular {pointer 1}  }
	{ input_A_434_out float 32 regular {pointer 1}  }
	{ input_A_433_out float 32 regular {pointer 1}  }
	{ input_A_432_out float 32 regular {pointer 1}  }
	{ input_A_431_out float 32 regular {pointer 1}  }
	{ input_A_430_out float 32 regular {pointer 1}  }
	{ input_A_429_out float 32 regular {pointer 1}  }
	{ input_A_428_out float 32 regular {pointer 1}  }
	{ input_A_427_out float 32 regular {pointer 1}  }
	{ input_A_426_out float 32 regular {pointer 1}  }
	{ input_A_425_out float 32 regular {pointer 1}  }
	{ input_A_424_out float 32 regular {pointer 1}  }
	{ input_A_423_out float 32 regular {pointer 1}  }
	{ input_A_422_out float 32 regular {pointer 1}  }
	{ input_A_421_out float 32 regular {pointer 1}  }
	{ input_A_420_out float 32 regular {pointer 1}  }
	{ input_A_419_out float 32 regular {pointer 1}  }
	{ input_A_418_out float 32 regular {pointer 1}  }
	{ input_A_417_out float 32 regular {pointer 1}  }
	{ input_A_416_out float 32 regular {pointer 1}  }
	{ input_A_415_out float 32 regular {pointer 1}  }
	{ input_A_414_out float 32 regular {pointer 1}  }
	{ input_A_413_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_229", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_230", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_231", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_444_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_443_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_442_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_441_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_440_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_439_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_438_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_437_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_436_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_435_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_434_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_433_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_432_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_431_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_430_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_429_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_428_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_427_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_426_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_425_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_424_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_423_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_422_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_421_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_420_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_419_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_418_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_417_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_416_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_415_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_414_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_413_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ empty_229_i sc_in sc_lv 32 signal 4 } 
	{ empty_229_o sc_out sc_lv 32 signal 4 } 
	{ empty_229_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ empty_230 sc_out sc_lv 4 signal 5 } 
	{ empty_230_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ empty_231 sc_out sc_lv 4 signal 6 } 
	{ empty_231_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ empty sc_out sc_lv 1 signal 7 } 
	{ empty_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_A_444_out sc_out sc_lv 32 signal 8 } 
	{ input_A_444_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_A_443_out sc_out sc_lv 32 signal 9 } 
	{ input_A_443_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ input_A_442_out sc_out sc_lv 32 signal 10 } 
	{ input_A_442_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_A_441_out sc_out sc_lv 32 signal 11 } 
	{ input_A_441_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ input_A_440_out sc_out sc_lv 32 signal 12 } 
	{ input_A_440_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ input_A_439_out sc_out sc_lv 32 signal 13 } 
	{ input_A_439_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ input_A_438_out sc_out sc_lv 32 signal 14 } 
	{ input_A_438_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ input_A_437_out sc_out sc_lv 32 signal 15 } 
	{ input_A_437_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ input_A_436_out sc_out sc_lv 32 signal 16 } 
	{ input_A_436_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ input_A_435_out sc_out sc_lv 32 signal 17 } 
	{ input_A_435_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ input_A_434_out sc_out sc_lv 32 signal 18 } 
	{ input_A_434_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ input_A_433_out sc_out sc_lv 32 signal 19 } 
	{ input_A_433_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ input_A_432_out sc_out sc_lv 32 signal 20 } 
	{ input_A_432_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ input_A_431_out sc_out sc_lv 32 signal 21 } 
	{ input_A_431_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ input_A_430_out sc_out sc_lv 32 signal 22 } 
	{ input_A_430_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ input_A_429_out sc_out sc_lv 32 signal 23 } 
	{ input_A_429_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ input_A_428_out sc_out sc_lv 32 signal 24 } 
	{ input_A_428_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ input_A_427_out sc_out sc_lv 32 signal 25 } 
	{ input_A_427_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ input_A_426_out sc_out sc_lv 32 signal 26 } 
	{ input_A_426_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ input_A_425_out sc_out sc_lv 32 signal 27 } 
	{ input_A_425_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ input_A_424_out sc_out sc_lv 32 signal 28 } 
	{ input_A_424_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ input_A_423_out sc_out sc_lv 32 signal 29 } 
	{ input_A_423_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ input_A_422_out sc_out sc_lv 32 signal 30 } 
	{ input_A_422_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ input_A_421_out sc_out sc_lv 32 signal 31 } 
	{ input_A_421_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ input_A_420_out sc_out sc_lv 32 signal 32 } 
	{ input_A_420_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ input_A_419_out sc_out sc_lv 32 signal 33 } 
	{ input_A_419_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ input_A_418_out sc_out sc_lv 32 signal 34 } 
	{ input_A_418_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ input_A_417_out sc_out sc_lv 32 signal 35 } 
	{ input_A_417_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ input_A_416_out sc_out sc_lv 32 signal 36 } 
	{ input_A_416_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ input_A_415_out sc_out sc_lv 32 signal 37 } 
	{ input_A_415_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ input_A_414_out sc_out sc_lv 32 signal 38 } 
	{ input_A_414_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ input_A_413_out sc_out sc_lv 32 signal 39 } 
	{ input_A_413_out_ap_vld sc_out sc_logic 1 outvld 39 } 
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
 	{ "name": "empty_229_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_229", "role": "i" }} , 
 	{ "name": "empty_229_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_229", "role": "o" }} , 
 	{ "name": "empty_229_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_229", "role": "o_ap_vld" }} , 
 	{ "name": "empty_230", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_230", "role": "default" }} , 
 	{ "name": "empty_230_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_230", "role": "ap_vld" }} , 
 	{ "name": "empty_231", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_231", "role": "default" }} , 
 	{ "name": "empty_231_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_231", "role": "ap_vld" }} , 
 	{ "name": "empty", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "empty_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty", "role": "ap_vld" }} , 
 	{ "name": "input_A_444_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_444_out", "role": "default" }} , 
 	{ "name": "input_A_444_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_444_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_443_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_443_out", "role": "default" }} , 
 	{ "name": "input_A_443_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_443_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_442_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_442_out", "role": "default" }} , 
 	{ "name": "input_A_442_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_442_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_441_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_441_out", "role": "default" }} , 
 	{ "name": "input_A_441_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_441_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_440_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_440_out", "role": "default" }} , 
 	{ "name": "input_A_440_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_440_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_439_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_439_out", "role": "default" }} , 
 	{ "name": "input_A_439_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_439_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_438_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_438_out", "role": "default" }} , 
 	{ "name": "input_A_438_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_438_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_437_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_437_out", "role": "default" }} , 
 	{ "name": "input_A_437_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_437_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_436_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_436_out", "role": "default" }} , 
 	{ "name": "input_A_436_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_436_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_435_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_435_out", "role": "default" }} , 
 	{ "name": "input_A_435_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_435_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_434_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_434_out", "role": "default" }} , 
 	{ "name": "input_A_434_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_434_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_433_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_433_out", "role": "default" }} , 
 	{ "name": "input_A_433_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_433_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_432_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_432_out", "role": "default" }} , 
 	{ "name": "input_A_432_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_432_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_431_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_431_out", "role": "default" }} , 
 	{ "name": "input_A_431_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_431_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_430_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_430_out", "role": "default" }} , 
 	{ "name": "input_A_430_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_430_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_429_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_429_out", "role": "default" }} , 
 	{ "name": "input_A_429_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_429_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_428_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_428_out", "role": "default" }} , 
 	{ "name": "input_A_428_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_428_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_427_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_427_out", "role": "default" }} , 
 	{ "name": "input_A_427_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_427_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_426_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_426_out", "role": "default" }} , 
 	{ "name": "input_A_426_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_426_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_425_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_425_out", "role": "default" }} , 
 	{ "name": "input_A_425_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_425_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_424_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_424_out", "role": "default" }} , 
 	{ "name": "input_A_424_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_424_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_423_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_423_out", "role": "default" }} , 
 	{ "name": "input_A_423_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_423_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_422_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_422_out", "role": "default" }} , 
 	{ "name": "input_A_422_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_422_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_421_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_421_out", "role": "default" }} , 
 	{ "name": "input_A_421_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_421_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_420_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_420_out", "role": "default" }} , 
 	{ "name": "input_A_420_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_420_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_419_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_419_out", "role": "default" }} , 
 	{ "name": "input_A_419_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_419_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_418_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_418_out", "role": "default" }} , 
 	{ "name": "input_A_418_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_418_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_417_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_417_out", "role": "default" }} , 
 	{ "name": "input_A_417_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_417_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_416_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_416_out", "role": "default" }} , 
 	{ "name": "input_A_416_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_416_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_415_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_415_out", "role": "default" }} , 
 	{ "name": "input_A_415_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_415_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_414_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_414_out", "role": "default" }} , 
 	{ "name": "input_A_414_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_414_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_413_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_413_out", "role": "default" }} , 
 	{ "name": "input_A_413_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_413_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrixmul_32_opt_Pipeline_loop_input_A229",
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
			{"Name" : "empty_229", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_230", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty_231", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_444_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_443_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_442_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_441_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_440_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_439_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_438_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_437_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_436_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_435_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_434_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_433_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_432_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_431_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_430_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_429_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_428_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_427_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_426_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_425_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_424_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_423_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_422_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_421_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_420_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_419_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_418_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_417_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_416_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_415_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_414_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_413_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_input_A2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_32_opt_Pipeline_loop_input_A229 {
		in_A_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_last_V {Type I LastRead 1 FirstWrite -1}
		empty_229 {Type IO LastRead 1 FirstWrite 1}
		empty_230 {Type O LastRead -1 FirstWrite 1}
		empty_231 {Type O LastRead -1 FirstWrite 1}
		empty {Type O LastRead -1 FirstWrite 1}
		input_A_444_out {Type O LastRead -1 FirstWrite 0}
		input_A_443_out {Type O LastRead -1 FirstWrite 0}
		input_A_442_out {Type O LastRead -1 FirstWrite 0}
		input_A_441_out {Type O LastRead -1 FirstWrite 0}
		input_A_440_out {Type O LastRead -1 FirstWrite 0}
		input_A_439_out {Type O LastRead -1 FirstWrite 0}
		input_A_438_out {Type O LastRead -1 FirstWrite 0}
		input_A_437_out {Type O LastRead -1 FirstWrite 0}
		input_A_436_out {Type O LastRead -1 FirstWrite 0}
		input_A_435_out {Type O LastRead -1 FirstWrite 0}
		input_A_434_out {Type O LastRead -1 FirstWrite 0}
		input_A_433_out {Type O LastRead -1 FirstWrite 0}
		input_A_432_out {Type O LastRead -1 FirstWrite 0}
		input_A_431_out {Type O LastRead -1 FirstWrite 0}
		input_A_430_out {Type O LastRead -1 FirstWrite 0}
		input_A_429_out {Type O LastRead -1 FirstWrite 0}
		input_A_428_out {Type O LastRead -1 FirstWrite 0}
		input_A_427_out {Type O LastRead -1 FirstWrite 0}
		input_A_426_out {Type O LastRead -1 FirstWrite 0}
		input_A_425_out {Type O LastRead -1 FirstWrite 0}
		input_A_424_out {Type O LastRead -1 FirstWrite 0}
		input_A_423_out {Type O LastRead -1 FirstWrite 0}
		input_A_422_out {Type O LastRead -1 FirstWrite 0}
		input_A_421_out {Type O LastRead -1 FirstWrite 0}
		input_A_420_out {Type O LastRead -1 FirstWrite 0}
		input_A_419_out {Type O LastRead -1 FirstWrite 0}
		input_A_418_out {Type O LastRead -1 FirstWrite 0}
		input_A_417_out {Type O LastRead -1 FirstWrite 0}
		input_A_416_out {Type O LastRead -1 FirstWrite 0}
		input_A_415_out {Type O LastRead -1 FirstWrite 0}
		input_A_414_out {Type O LastRead -1 FirstWrite 0}
		input_A_413_out {Type O LastRead -1 FirstWrite 0}}}

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
	empty_229 { ap_ovld {  { empty_229_i in_data 0 32 }  { empty_229_o out_data 1 32 }  { empty_229_o_ap_vld out_vld 1 1 } } }
	empty_230 { ap_vld {  { empty_230 out_data 1 4 }  { empty_230_ap_vld out_vld 1 1 } } }
	empty_231 { ap_vld {  { empty_231 out_data 1 4 }  { empty_231_ap_vld out_vld 1 1 } } }
	empty { ap_vld {  { empty out_data 1 1 }  { empty_ap_vld out_vld 1 1 } } }
	input_A_444_out { ap_vld {  { input_A_444_out out_data 1 32 }  { input_A_444_out_ap_vld out_vld 1 1 } } }
	input_A_443_out { ap_vld {  { input_A_443_out out_data 1 32 }  { input_A_443_out_ap_vld out_vld 1 1 } } }
	input_A_442_out { ap_vld {  { input_A_442_out out_data 1 32 }  { input_A_442_out_ap_vld out_vld 1 1 } } }
	input_A_441_out { ap_vld {  { input_A_441_out out_data 1 32 }  { input_A_441_out_ap_vld out_vld 1 1 } } }
	input_A_440_out { ap_vld {  { input_A_440_out out_data 1 32 }  { input_A_440_out_ap_vld out_vld 1 1 } } }
	input_A_439_out { ap_vld {  { input_A_439_out out_data 1 32 }  { input_A_439_out_ap_vld out_vld 1 1 } } }
	input_A_438_out { ap_vld {  { input_A_438_out out_data 1 32 }  { input_A_438_out_ap_vld out_vld 1 1 } } }
	input_A_437_out { ap_vld {  { input_A_437_out out_data 1 32 }  { input_A_437_out_ap_vld out_vld 1 1 } } }
	input_A_436_out { ap_vld {  { input_A_436_out out_data 1 32 }  { input_A_436_out_ap_vld out_vld 1 1 } } }
	input_A_435_out { ap_vld {  { input_A_435_out out_data 1 32 }  { input_A_435_out_ap_vld out_vld 1 1 } } }
	input_A_434_out { ap_vld {  { input_A_434_out out_data 1 32 }  { input_A_434_out_ap_vld out_vld 1 1 } } }
	input_A_433_out { ap_vld {  { input_A_433_out out_data 1 32 }  { input_A_433_out_ap_vld out_vld 1 1 } } }
	input_A_432_out { ap_vld {  { input_A_432_out out_data 1 32 }  { input_A_432_out_ap_vld out_vld 1 1 } } }
	input_A_431_out { ap_vld {  { input_A_431_out out_data 1 32 }  { input_A_431_out_ap_vld out_vld 1 1 } } }
	input_A_430_out { ap_vld {  { input_A_430_out out_data 1 32 }  { input_A_430_out_ap_vld out_vld 1 1 } } }
	input_A_429_out { ap_vld {  { input_A_429_out out_data 1 32 }  { input_A_429_out_ap_vld out_vld 1 1 } } }
	input_A_428_out { ap_vld {  { input_A_428_out out_data 1 32 }  { input_A_428_out_ap_vld out_vld 1 1 } } }
	input_A_427_out { ap_vld {  { input_A_427_out out_data 1 32 }  { input_A_427_out_ap_vld out_vld 1 1 } } }
	input_A_426_out { ap_vld {  { input_A_426_out out_data 1 32 }  { input_A_426_out_ap_vld out_vld 1 1 } } }
	input_A_425_out { ap_vld {  { input_A_425_out out_data 1 32 }  { input_A_425_out_ap_vld out_vld 1 1 } } }
	input_A_424_out { ap_vld {  { input_A_424_out out_data 1 32 }  { input_A_424_out_ap_vld out_vld 1 1 } } }
	input_A_423_out { ap_vld {  { input_A_423_out out_data 1 32 }  { input_A_423_out_ap_vld out_vld 1 1 } } }
	input_A_422_out { ap_vld {  { input_A_422_out out_data 1 32 }  { input_A_422_out_ap_vld out_vld 1 1 } } }
	input_A_421_out { ap_vld {  { input_A_421_out out_data 1 32 }  { input_A_421_out_ap_vld out_vld 1 1 } } }
	input_A_420_out { ap_vld {  { input_A_420_out out_data 1 32 }  { input_A_420_out_ap_vld out_vld 1 1 } } }
	input_A_419_out { ap_vld {  { input_A_419_out out_data 1 32 }  { input_A_419_out_ap_vld out_vld 1 1 } } }
	input_A_418_out { ap_vld {  { input_A_418_out out_data 1 32 }  { input_A_418_out_ap_vld out_vld 1 1 } } }
	input_A_417_out { ap_vld {  { input_A_417_out out_data 1 32 }  { input_A_417_out_ap_vld out_vld 1 1 } } }
	input_A_416_out { ap_vld {  { input_A_416_out out_data 1 32 }  { input_A_416_out_ap_vld out_vld 1 1 } } }
	input_A_415_out { ap_vld {  { input_A_415_out out_data 1 32 }  { input_A_415_out_ap_vld out_vld 1 1 } } }
	input_A_414_out { ap_vld {  { input_A_414_out out_data 1 32 }  { input_A_414_out_ap_vld out_vld 1 1 } } }
	input_A_413_out { ap_vld {  { input_A_413_out out_data 1 32 }  { input_A_413_out_ap_vld out_vld 1 1 } } }
}
