set moduleName matrixmul_32_opt_Pipeline_loop_input_A25
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
set C_modelName {matrixmul_32_opt_Pipeline_loop_input_A25}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_A_V_data_V int 32 regular {axi_s 0 volatile  { in_A Data } }  }
	{ in_A_V_keep_V int 4 regular {axi_s 0 volatile  { in_A Keep } }  }
	{ in_A_V_strb_V int 4 regular {axi_s 0 volatile  { in_A Strb } }  }
	{ in_A_V_last_V int 1 regular {axi_s 0 volatile  { in_A Last } }  }
	{ empty_214 int 32 regular {pointer 2}  }
	{ empty_215 int 4 regular {pointer 1}  }
	{ empty_216 int 4 regular {pointer 1}  }
	{ empty int 1 regular {pointer 1}  }
	{ input_A_356_out float 32 regular {pointer 1}  }
	{ input_A_355_out float 32 regular {pointer 1}  }
	{ input_A_354_out float 32 regular {pointer 1}  }
	{ input_A_353_out float 32 regular {pointer 1}  }
	{ input_A_352_out float 32 regular {pointer 1}  }
	{ input_A_351_out float 32 regular {pointer 1}  }
	{ input_A_350_out float 32 regular {pointer 1}  }
	{ input_A_349_out float 32 regular {pointer 1}  }
	{ input_A_348_out float 32 regular {pointer 1}  }
	{ input_A_347_out float 32 regular {pointer 1}  }
	{ input_A_346_out float 32 regular {pointer 1}  }
	{ input_A_345_out float 32 regular {pointer 1}  }
	{ input_A_344_out float 32 regular {pointer 1}  }
	{ input_A_343_out float 32 regular {pointer 1}  }
	{ input_A_342_out float 32 regular {pointer 1}  }
	{ input_A_341_out float 32 regular {pointer 1}  }
	{ input_A_340_out float 32 regular {pointer 1}  }
	{ input_A_339_out float 32 regular {pointer 1}  }
	{ input_A_338_out float 32 regular {pointer 1}  }
	{ input_A_337_out float 32 regular {pointer 1}  }
	{ input_A_336_out float 32 regular {pointer 1}  }
	{ input_A_335_out float 32 regular {pointer 1}  }
	{ input_A_334_out float 32 regular {pointer 1}  }
	{ input_A_333_out float 32 regular {pointer 1}  }
	{ input_A_332_out float 32 regular {pointer 1}  }
	{ input_A_331_out float 32 regular {pointer 1}  }
	{ input_A_330_out float 32 regular {pointer 1}  }
	{ input_A_329_out float 32 regular {pointer 1}  }
	{ input_A_328_out float 32 regular {pointer 1}  }
	{ input_A_327_out float 32 regular {pointer 1}  }
	{ input_A_326_out float 32 regular {pointer 1}  }
	{ input_A_325_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_214", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_215", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_216", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_356_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_355_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_354_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_353_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_352_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_351_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_350_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_349_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_348_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_347_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_346_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_345_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_344_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_343_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_342_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_341_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_340_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_339_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_338_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_337_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_336_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_335_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_334_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_333_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_332_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_331_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_330_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_329_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_328_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_327_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_326_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_325_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ empty_214_i sc_in sc_lv 32 signal 4 } 
	{ empty_214_o sc_out sc_lv 32 signal 4 } 
	{ empty_214_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ empty_215 sc_out sc_lv 4 signal 5 } 
	{ empty_215_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ empty_216 sc_out sc_lv 4 signal 6 } 
	{ empty_216_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ empty sc_out sc_lv 1 signal 7 } 
	{ empty_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_A_356_out sc_out sc_lv 32 signal 8 } 
	{ input_A_356_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_A_355_out sc_out sc_lv 32 signal 9 } 
	{ input_A_355_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ input_A_354_out sc_out sc_lv 32 signal 10 } 
	{ input_A_354_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_A_353_out sc_out sc_lv 32 signal 11 } 
	{ input_A_353_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ input_A_352_out sc_out sc_lv 32 signal 12 } 
	{ input_A_352_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ input_A_351_out sc_out sc_lv 32 signal 13 } 
	{ input_A_351_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ input_A_350_out sc_out sc_lv 32 signal 14 } 
	{ input_A_350_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ input_A_349_out sc_out sc_lv 32 signal 15 } 
	{ input_A_349_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ input_A_348_out sc_out sc_lv 32 signal 16 } 
	{ input_A_348_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ input_A_347_out sc_out sc_lv 32 signal 17 } 
	{ input_A_347_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ input_A_346_out sc_out sc_lv 32 signal 18 } 
	{ input_A_346_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ input_A_345_out sc_out sc_lv 32 signal 19 } 
	{ input_A_345_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ input_A_344_out sc_out sc_lv 32 signal 20 } 
	{ input_A_344_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ input_A_343_out sc_out sc_lv 32 signal 21 } 
	{ input_A_343_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ input_A_342_out sc_out sc_lv 32 signal 22 } 
	{ input_A_342_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ input_A_341_out sc_out sc_lv 32 signal 23 } 
	{ input_A_341_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ input_A_340_out sc_out sc_lv 32 signal 24 } 
	{ input_A_340_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ input_A_339_out sc_out sc_lv 32 signal 25 } 
	{ input_A_339_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ input_A_338_out sc_out sc_lv 32 signal 26 } 
	{ input_A_338_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ input_A_337_out sc_out sc_lv 32 signal 27 } 
	{ input_A_337_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ input_A_336_out sc_out sc_lv 32 signal 28 } 
	{ input_A_336_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ input_A_335_out sc_out sc_lv 32 signal 29 } 
	{ input_A_335_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ input_A_334_out sc_out sc_lv 32 signal 30 } 
	{ input_A_334_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ input_A_333_out sc_out sc_lv 32 signal 31 } 
	{ input_A_333_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ input_A_332_out sc_out sc_lv 32 signal 32 } 
	{ input_A_332_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ input_A_331_out sc_out sc_lv 32 signal 33 } 
	{ input_A_331_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ input_A_330_out sc_out sc_lv 32 signal 34 } 
	{ input_A_330_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ input_A_329_out sc_out sc_lv 32 signal 35 } 
	{ input_A_329_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ input_A_328_out sc_out sc_lv 32 signal 36 } 
	{ input_A_328_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ input_A_327_out sc_out sc_lv 32 signal 37 } 
	{ input_A_327_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ input_A_326_out sc_out sc_lv 32 signal 38 } 
	{ input_A_326_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ input_A_325_out sc_out sc_lv 32 signal 39 } 
	{ input_A_325_out_ap_vld sc_out sc_logic 1 outvld 39 } 
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
 	{ "name": "empty_214_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_214", "role": "i" }} , 
 	{ "name": "empty_214_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_214", "role": "o" }} , 
 	{ "name": "empty_214_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_214", "role": "o_ap_vld" }} , 
 	{ "name": "empty_215", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_215", "role": "default" }} , 
 	{ "name": "empty_215_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_215", "role": "ap_vld" }} , 
 	{ "name": "empty_216", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_216", "role": "default" }} , 
 	{ "name": "empty_216_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_216", "role": "ap_vld" }} , 
 	{ "name": "empty", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "empty_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty", "role": "ap_vld" }} , 
 	{ "name": "input_A_356_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_356_out", "role": "default" }} , 
 	{ "name": "input_A_356_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_356_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_355_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_355_out", "role": "default" }} , 
 	{ "name": "input_A_355_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_355_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_354_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_354_out", "role": "default" }} , 
 	{ "name": "input_A_354_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_354_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_353_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_353_out", "role": "default" }} , 
 	{ "name": "input_A_353_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_353_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_352_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_352_out", "role": "default" }} , 
 	{ "name": "input_A_352_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_352_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_351_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_351_out", "role": "default" }} , 
 	{ "name": "input_A_351_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_351_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_350_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_350_out", "role": "default" }} , 
 	{ "name": "input_A_350_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_350_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_349_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_349_out", "role": "default" }} , 
 	{ "name": "input_A_349_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_349_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_348_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_348_out", "role": "default" }} , 
 	{ "name": "input_A_348_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_348_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_347_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_347_out", "role": "default" }} , 
 	{ "name": "input_A_347_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_347_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_346_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_346_out", "role": "default" }} , 
 	{ "name": "input_A_346_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_346_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_345_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_345_out", "role": "default" }} , 
 	{ "name": "input_A_345_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_345_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_344_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_344_out", "role": "default" }} , 
 	{ "name": "input_A_344_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_344_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_343_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_343_out", "role": "default" }} , 
 	{ "name": "input_A_343_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_343_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_342_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_342_out", "role": "default" }} , 
 	{ "name": "input_A_342_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_342_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_341_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_341_out", "role": "default" }} , 
 	{ "name": "input_A_341_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_341_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_340_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_340_out", "role": "default" }} , 
 	{ "name": "input_A_340_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_340_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_339_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_339_out", "role": "default" }} , 
 	{ "name": "input_A_339_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_339_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_338_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_338_out", "role": "default" }} , 
 	{ "name": "input_A_338_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_338_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_337_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_337_out", "role": "default" }} , 
 	{ "name": "input_A_337_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_337_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_336_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_336_out", "role": "default" }} , 
 	{ "name": "input_A_336_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_336_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_335_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_335_out", "role": "default" }} , 
 	{ "name": "input_A_335_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_335_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_334_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_334_out", "role": "default" }} , 
 	{ "name": "input_A_334_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_334_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_333_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_333_out", "role": "default" }} , 
 	{ "name": "input_A_333_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_333_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_332_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_332_out", "role": "default" }} , 
 	{ "name": "input_A_332_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_332_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_331_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_331_out", "role": "default" }} , 
 	{ "name": "input_A_331_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_331_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_330_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_330_out", "role": "default" }} , 
 	{ "name": "input_A_330_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_330_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_329_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_329_out", "role": "default" }} , 
 	{ "name": "input_A_329_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_329_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_328_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_328_out", "role": "default" }} , 
 	{ "name": "input_A_328_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_328_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_327_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_327_out", "role": "default" }} , 
 	{ "name": "input_A_327_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_327_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_326_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_326_out", "role": "default" }} , 
 	{ "name": "input_A_326_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_326_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_325_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_325_out", "role": "default" }} , 
 	{ "name": "input_A_325_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_325_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrixmul_32_opt_Pipeline_loop_input_A25",
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
			{"Name" : "empty_214", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_215", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty_216", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_356_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_355_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_354_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_353_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_352_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_351_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_350_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_349_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_348_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_347_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_346_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_345_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_344_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_343_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_342_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_341_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_340_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_339_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_338_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_337_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_336_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_335_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_334_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_333_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_332_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_331_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_330_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_329_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_328_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_327_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_326_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_325_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_input_A2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_32_opt_Pipeline_loop_input_A25 {
		in_A_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_last_V {Type I LastRead 1 FirstWrite -1}
		empty_214 {Type IO LastRead 1 FirstWrite 1}
		empty_215 {Type O LastRead -1 FirstWrite 1}
		empty_216 {Type O LastRead -1 FirstWrite 1}
		empty {Type O LastRead -1 FirstWrite 1}
		input_A_356_out {Type O LastRead -1 FirstWrite 0}
		input_A_355_out {Type O LastRead -1 FirstWrite 0}
		input_A_354_out {Type O LastRead -1 FirstWrite 0}
		input_A_353_out {Type O LastRead -1 FirstWrite 0}
		input_A_352_out {Type O LastRead -1 FirstWrite 0}
		input_A_351_out {Type O LastRead -1 FirstWrite 0}
		input_A_350_out {Type O LastRead -1 FirstWrite 0}
		input_A_349_out {Type O LastRead -1 FirstWrite 0}
		input_A_348_out {Type O LastRead -1 FirstWrite 0}
		input_A_347_out {Type O LastRead -1 FirstWrite 0}
		input_A_346_out {Type O LastRead -1 FirstWrite 0}
		input_A_345_out {Type O LastRead -1 FirstWrite 0}
		input_A_344_out {Type O LastRead -1 FirstWrite 0}
		input_A_343_out {Type O LastRead -1 FirstWrite 0}
		input_A_342_out {Type O LastRead -1 FirstWrite 0}
		input_A_341_out {Type O LastRead -1 FirstWrite 0}
		input_A_340_out {Type O LastRead -1 FirstWrite 0}
		input_A_339_out {Type O LastRead -1 FirstWrite 0}
		input_A_338_out {Type O LastRead -1 FirstWrite 0}
		input_A_337_out {Type O LastRead -1 FirstWrite 0}
		input_A_336_out {Type O LastRead -1 FirstWrite 0}
		input_A_335_out {Type O LastRead -1 FirstWrite 0}
		input_A_334_out {Type O LastRead -1 FirstWrite 0}
		input_A_333_out {Type O LastRead -1 FirstWrite 0}
		input_A_332_out {Type O LastRead -1 FirstWrite 0}
		input_A_331_out {Type O LastRead -1 FirstWrite 0}
		input_A_330_out {Type O LastRead -1 FirstWrite 0}
		input_A_329_out {Type O LastRead -1 FirstWrite 0}
		input_A_328_out {Type O LastRead -1 FirstWrite 0}
		input_A_327_out {Type O LastRead -1 FirstWrite 0}
		input_A_326_out {Type O LastRead -1 FirstWrite 0}
		input_A_325_out {Type O LastRead -1 FirstWrite 0}}}

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
	empty_214 { ap_ovld {  { empty_214_i in_data 0 32 }  { empty_214_o out_data 1 32 }  { empty_214_o_ap_vld out_vld 1 1 } } }
	empty_215 { ap_vld {  { empty_215 out_data 1 4 }  { empty_215_ap_vld out_vld 1 1 } } }
	empty_216 { ap_vld {  { empty_216 out_data 1 4 }  { empty_216_ap_vld out_vld 1 1 } } }
	empty { ap_vld {  { empty out_data 1 1 }  { empty_ap_vld out_vld 1 1 } } }
	input_A_356_out { ap_vld {  { input_A_356_out out_data 1 32 }  { input_A_356_out_ap_vld out_vld 1 1 } } }
	input_A_355_out { ap_vld {  { input_A_355_out out_data 1 32 }  { input_A_355_out_ap_vld out_vld 1 1 } } }
	input_A_354_out { ap_vld {  { input_A_354_out out_data 1 32 }  { input_A_354_out_ap_vld out_vld 1 1 } } }
	input_A_353_out { ap_vld {  { input_A_353_out out_data 1 32 }  { input_A_353_out_ap_vld out_vld 1 1 } } }
	input_A_352_out { ap_vld {  { input_A_352_out out_data 1 32 }  { input_A_352_out_ap_vld out_vld 1 1 } } }
	input_A_351_out { ap_vld {  { input_A_351_out out_data 1 32 }  { input_A_351_out_ap_vld out_vld 1 1 } } }
	input_A_350_out { ap_vld {  { input_A_350_out out_data 1 32 }  { input_A_350_out_ap_vld out_vld 1 1 } } }
	input_A_349_out { ap_vld {  { input_A_349_out out_data 1 32 }  { input_A_349_out_ap_vld out_vld 1 1 } } }
	input_A_348_out { ap_vld {  { input_A_348_out out_data 1 32 }  { input_A_348_out_ap_vld out_vld 1 1 } } }
	input_A_347_out { ap_vld {  { input_A_347_out out_data 1 32 }  { input_A_347_out_ap_vld out_vld 1 1 } } }
	input_A_346_out { ap_vld {  { input_A_346_out out_data 1 32 }  { input_A_346_out_ap_vld out_vld 1 1 } } }
	input_A_345_out { ap_vld {  { input_A_345_out out_data 1 32 }  { input_A_345_out_ap_vld out_vld 1 1 } } }
	input_A_344_out { ap_vld {  { input_A_344_out out_data 1 32 }  { input_A_344_out_ap_vld out_vld 1 1 } } }
	input_A_343_out { ap_vld {  { input_A_343_out out_data 1 32 }  { input_A_343_out_ap_vld out_vld 1 1 } } }
	input_A_342_out { ap_vld {  { input_A_342_out out_data 1 32 }  { input_A_342_out_ap_vld out_vld 1 1 } } }
	input_A_341_out { ap_vld {  { input_A_341_out out_data 1 32 }  { input_A_341_out_ap_vld out_vld 1 1 } } }
	input_A_340_out { ap_vld {  { input_A_340_out out_data 1 32 }  { input_A_340_out_ap_vld out_vld 1 1 } } }
	input_A_339_out { ap_vld {  { input_A_339_out out_data 1 32 }  { input_A_339_out_ap_vld out_vld 1 1 } } }
	input_A_338_out { ap_vld {  { input_A_338_out out_data 1 32 }  { input_A_338_out_ap_vld out_vld 1 1 } } }
	input_A_337_out { ap_vld {  { input_A_337_out out_data 1 32 }  { input_A_337_out_ap_vld out_vld 1 1 } } }
	input_A_336_out { ap_vld {  { input_A_336_out out_data 1 32 }  { input_A_336_out_ap_vld out_vld 1 1 } } }
	input_A_335_out { ap_vld {  { input_A_335_out out_data 1 32 }  { input_A_335_out_ap_vld out_vld 1 1 } } }
	input_A_334_out { ap_vld {  { input_A_334_out out_data 1 32 }  { input_A_334_out_ap_vld out_vld 1 1 } } }
	input_A_333_out { ap_vld {  { input_A_333_out out_data 1 32 }  { input_A_333_out_ap_vld out_vld 1 1 } } }
	input_A_332_out { ap_vld {  { input_A_332_out out_data 1 32 }  { input_A_332_out_ap_vld out_vld 1 1 } } }
	input_A_331_out { ap_vld {  { input_A_331_out out_data 1 32 }  { input_A_331_out_ap_vld out_vld 1 1 } } }
	input_A_330_out { ap_vld {  { input_A_330_out out_data 1 32 }  { input_A_330_out_ap_vld out_vld 1 1 } } }
	input_A_329_out { ap_vld {  { input_A_329_out out_data 1 32 }  { input_A_329_out_ap_vld out_vld 1 1 } } }
	input_A_328_out { ap_vld {  { input_A_328_out out_data 1 32 }  { input_A_328_out_ap_vld out_vld 1 1 } } }
	input_A_327_out { ap_vld {  { input_A_327_out out_data 1 32 }  { input_A_327_out_ap_vld out_vld 1 1 } } }
	input_A_326_out { ap_vld {  { input_A_326_out out_data 1 32 }  { input_A_326_out_ap_vld out_vld 1 1 } } }
	input_A_325_out { ap_vld {  { input_A_325_out out_data 1 32 }  { input_A_325_out_ap_vld out_vld 1 1 } } }
}
