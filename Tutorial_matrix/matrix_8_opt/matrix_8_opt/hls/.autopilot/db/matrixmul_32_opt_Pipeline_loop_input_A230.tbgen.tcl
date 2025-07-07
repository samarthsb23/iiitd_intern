set moduleName matrixmul_32_opt_Pipeline_loop_input_A230
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
set C_modelName {matrixmul_32_opt_Pipeline_loop_input_A230}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_A_V_data_V int 32 regular {axi_s 0 volatile  { in_A Data } }  }
	{ in_A_V_keep_V int 4 regular {axi_s 0 volatile  { in_A Keep } }  }
	{ in_A_V_strb_V int 4 regular {axi_s 0 volatile  { in_A Strb } }  }
	{ in_A_V_last_V int 1 regular {axi_s 0 volatile  { in_A Last } }  }
	{ empty_223 int 32 regular {pointer 2}  }
	{ empty_224 int 4 regular {pointer 1}  }
	{ empty_225 int 4 regular {pointer 1}  }
	{ empty int 1 regular {pointer 1}  }
	{ input_A_509_out float 32 regular {pointer 1}  }
	{ input_A_508_out float 32 regular {pointer 1}  }
	{ input_A_507_out float 32 regular {pointer 1}  }
	{ input_A_506_out float 32 regular {pointer 1}  }
	{ input_A_505_out float 32 regular {pointer 1}  }
	{ input_A_504_out float 32 regular {pointer 1}  }
	{ input_A_503_out float 32 regular {pointer 1}  }
	{ input_A_502_out float 32 regular {pointer 1}  }
	{ input_A_501_out float 32 regular {pointer 1}  }
	{ input_A_500_out float 32 regular {pointer 1}  }
	{ input_A_499_out float 32 regular {pointer 1}  }
	{ input_A_498_out float 32 regular {pointer 1}  }
	{ input_A_497_out float 32 regular {pointer 1}  }
	{ input_A_496_out float 32 regular {pointer 1}  }
	{ input_A_495_out float 32 regular {pointer 1}  }
	{ input_A_494_out float 32 regular {pointer 1}  }
	{ input_A_493_out float 32 regular {pointer 1}  }
	{ input_A_492_out float 32 regular {pointer 1}  }
	{ input_A_491_out float 32 regular {pointer 1}  }
	{ input_A_490_out float 32 regular {pointer 1}  }
	{ input_A_489_out float 32 regular {pointer 1}  }
	{ input_A_488_out float 32 regular {pointer 1}  }
	{ input_A_487_out float 32 regular {pointer 1}  }
	{ input_A_486_out float 32 regular {pointer 1}  }
	{ input_A_485_out float 32 regular {pointer 1}  }
	{ input_A_484_out float 32 regular {pointer 1}  }
	{ input_A_483_out float 32 regular {pointer 1}  }
	{ input_A_482_out float 32 regular {pointer 1}  }
	{ input_A_481_out float 32 regular {pointer 1}  }
	{ input_A_480_out float 32 regular {pointer 1}  }
	{ input_A_479_out float 32 regular {pointer 1}  }
	{ input_A_478_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_223", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_224", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_225", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_509_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_508_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_507_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_506_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_505_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_504_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_503_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_502_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_501_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_500_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_499_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_498_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_497_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_496_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_495_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_494_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_493_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_492_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_491_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_490_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_489_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_488_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_487_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_486_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_485_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_484_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_483_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_482_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_481_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_480_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_479_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_478_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ empty_223_i sc_in sc_lv 32 signal 4 } 
	{ empty_223_o sc_out sc_lv 32 signal 4 } 
	{ empty_223_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ empty_224 sc_out sc_lv 4 signal 5 } 
	{ empty_224_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ empty_225 sc_out sc_lv 4 signal 6 } 
	{ empty_225_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ empty sc_out sc_lv 1 signal 7 } 
	{ empty_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_A_509_out sc_out sc_lv 32 signal 8 } 
	{ input_A_509_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_A_508_out sc_out sc_lv 32 signal 9 } 
	{ input_A_508_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ input_A_507_out sc_out sc_lv 32 signal 10 } 
	{ input_A_507_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_A_506_out sc_out sc_lv 32 signal 11 } 
	{ input_A_506_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ input_A_505_out sc_out sc_lv 32 signal 12 } 
	{ input_A_505_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ input_A_504_out sc_out sc_lv 32 signal 13 } 
	{ input_A_504_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ input_A_503_out sc_out sc_lv 32 signal 14 } 
	{ input_A_503_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ input_A_502_out sc_out sc_lv 32 signal 15 } 
	{ input_A_502_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ input_A_501_out sc_out sc_lv 32 signal 16 } 
	{ input_A_501_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ input_A_500_out sc_out sc_lv 32 signal 17 } 
	{ input_A_500_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ input_A_499_out sc_out sc_lv 32 signal 18 } 
	{ input_A_499_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ input_A_498_out sc_out sc_lv 32 signal 19 } 
	{ input_A_498_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ input_A_497_out sc_out sc_lv 32 signal 20 } 
	{ input_A_497_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ input_A_496_out sc_out sc_lv 32 signal 21 } 
	{ input_A_496_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ input_A_495_out sc_out sc_lv 32 signal 22 } 
	{ input_A_495_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ input_A_494_out sc_out sc_lv 32 signal 23 } 
	{ input_A_494_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ input_A_493_out sc_out sc_lv 32 signal 24 } 
	{ input_A_493_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ input_A_492_out sc_out sc_lv 32 signal 25 } 
	{ input_A_492_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ input_A_491_out sc_out sc_lv 32 signal 26 } 
	{ input_A_491_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ input_A_490_out sc_out sc_lv 32 signal 27 } 
	{ input_A_490_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ input_A_489_out sc_out sc_lv 32 signal 28 } 
	{ input_A_489_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ input_A_488_out sc_out sc_lv 32 signal 29 } 
	{ input_A_488_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ input_A_487_out sc_out sc_lv 32 signal 30 } 
	{ input_A_487_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ input_A_486_out sc_out sc_lv 32 signal 31 } 
	{ input_A_486_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ input_A_485_out sc_out sc_lv 32 signal 32 } 
	{ input_A_485_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ input_A_484_out sc_out sc_lv 32 signal 33 } 
	{ input_A_484_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ input_A_483_out sc_out sc_lv 32 signal 34 } 
	{ input_A_483_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ input_A_482_out sc_out sc_lv 32 signal 35 } 
	{ input_A_482_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ input_A_481_out sc_out sc_lv 32 signal 36 } 
	{ input_A_481_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ input_A_480_out sc_out sc_lv 32 signal 37 } 
	{ input_A_480_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ input_A_479_out sc_out sc_lv 32 signal 38 } 
	{ input_A_479_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ input_A_478_out sc_out sc_lv 32 signal 39 } 
	{ input_A_478_out_ap_vld sc_out sc_logic 1 outvld 39 } 
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
 	{ "name": "empty_223_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_223", "role": "i" }} , 
 	{ "name": "empty_223_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_223", "role": "o" }} , 
 	{ "name": "empty_223_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_223", "role": "o_ap_vld" }} , 
 	{ "name": "empty_224", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_224", "role": "default" }} , 
 	{ "name": "empty_224_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_224", "role": "ap_vld" }} , 
 	{ "name": "empty_225", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_225", "role": "default" }} , 
 	{ "name": "empty_225_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_225", "role": "ap_vld" }} , 
 	{ "name": "empty", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "empty_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty", "role": "ap_vld" }} , 
 	{ "name": "input_A_509_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_509_out", "role": "default" }} , 
 	{ "name": "input_A_509_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_509_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_508_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_508_out", "role": "default" }} , 
 	{ "name": "input_A_508_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_508_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_507_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_507_out", "role": "default" }} , 
 	{ "name": "input_A_507_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_507_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_506_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_506_out", "role": "default" }} , 
 	{ "name": "input_A_506_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_506_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_505_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_505_out", "role": "default" }} , 
 	{ "name": "input_A_505_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_505_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_504_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_504_out", "role": "default" }} , 
 	{ "name": "input_A_504_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_504_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_503_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_503_out", "role": "default" }} , 
 	{ "name": "input_A_503_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_503_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_502_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_502_out", "role": "default" }} , 
 	{ "name": "input_A_502_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_502_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_501_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_501_out", "role": "default" }} , 
 	{ "name": "input_A_501_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_501_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_500_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_500_out", "role": "default" }} , 
 	{ "name": "input_A_500_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_500_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_499_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_499_out", "role": "default" }} , 
 	{ "name": "input_A_499_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_499_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_498_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_498_out", "role": "default" }} , 
 	{ "name": "input_A_498_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_498_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_497_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_497_out", "role": "default" }} , 
 	{ "name": "input_A_497_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_497_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_496_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_496_out", "role": "default" }} , 
 	{ "name": "input_A_496_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_496_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_495_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_495_out", "role": "default" }} , 
 	{ "name": "input_A_495_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_495_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_494_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_494_out", "role": "default" }} , 
 	{ "name": "input_A_494_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_494_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_493_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_493_out", "role": "default" }} , 
 	{ "name": "input_A_493_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_493_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_492_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_492_out", "role": "default" }} , 
 	{ "name": "input_A_492_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_492_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_491_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_491_out", "role": "default" }} , 
 	{ "name": "input_A_491_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_491_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_490_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_490_out", "role": "default" }} , 
 	{ "name": "input_A_490_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_490_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_489_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_489_out", "role": "default" }} , 
 	{ "name": "input_A_489_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_489_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_488_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_488_out", "role": "default" }} , 
 	{ "name": "input_A_488_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_488_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_487_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_487_out", "role": "default" }} , 
 	{ "name": "input_A_487_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_487_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_486_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_486_out", "role": "default" }} , 
 	{ "name": "input_A_486_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_486_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_485_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_485_out", "role": "default" }} , 
 	{ "name": "input_A_485_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_485_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_484_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_484_out", "role": "default" }} , 
 	{ "name": "input_A_484_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_484_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_483_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_483_out", "role": "default" }} , 
 	{ "name": "input_A_483_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_483_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_482_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_482_out", "role": "default" }} , 
 	{ "name": "input_A_482_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_482_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_481_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_481_out", "role": "default" }} , 
 	{ "name": "input_A_481_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_481_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_480_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_480_out", "role": "default" }} , 
 	{ "name": "input_A_480_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_480_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_479_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_479_out", "role": "default" }} , 
 	{ "name": "input_A_479_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_479_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_478_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_478_out", "role": "default" }} , 
 	{ "name": "input_A_478_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_478_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrixmul_32_opt_Pipeline_loop_input_A230",
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
			{"Name" : "empty_223", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_224", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty_225", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_509_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_508_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_507_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_506_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_505_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_504_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_503_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_502_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_501_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_500_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_499_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_498_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_497_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_496_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_495_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_494_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_493_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_492_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_491_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_490_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_489_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_488_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_487_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_486_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_485_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_484_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_483_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_482_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_481_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_480_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_479_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_478_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_input_A2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_32_opt_Pipeline_loop_input_A230 {
		in_A_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_last_V {Type I LastRead 1 FirstWrite -1}
		empty_223 {Type IO LastRead 1 FirstWrite 1}
		empty_224 {Type O LastRead -1 FirstWrite 1}
		empty_225 {Type O LastRead -1 FirstWrite 1}
		empty {Type O LastRead -1 FirstWrite 1}
		input_A_509_out {Type O LastRead -1 FirstWrite 0}
		input_A_508_out {Type O LastRead -1 FirstWrite 0}
		input_A_507_out {Type O LastRead -1 FirstWrite 0}
		input_A_506_out {Type O LastRead -1 FirstWrite 0}
		input_A_505_out {Type O LastRead -1 FirstWrite 0}
		input_A_504_out {Type O LastRead -1 FirstWrite 0}
		input_A_503_out {Type O LastRead -1 FirstWrite 0}
		input_A_502_out {Type O LastRead -1 FirstWrite 0}
		input_A_501_out {Type O LastRead -1 FirstWrite 0}
		input_A_500_out {Type O LastRead -1 FirstWrite 0}
		input_A_499_out {Type O LastRead -1 FirstWrite 0}
		input_A_498_out {Type O LastRead -1 FirstWrite 0}
		input_A_497_out {Type O LastRead -1 FirstWrite 0}
		input_A_496_out {Type O LastRead -1 FirstWrite 0}
		input_A_495_out {Type O LastRead -1 FirstWrite 0}
		input_A_494_out {Type O LastRead -1 FirstWrite 0}
		input_A_493_out {Type O LastRead -1 FirstWrite 0}
		input_A_492_out {Type O LastRead -1 FirstWrite 0}
		input_A_491_out {Type O LastRead -1 FirstWrite 0}
		input_A_490_out {Type O LastRead -1 FirstWrite 0}
		input_A_489_out {Type O LastRead -1 FirstWrite 0}
		input_A_488_out {Type O LastRead -1 FirstWrite 0}
		input_A_487_out {Type O LastRead -1 FirstWrite 0}
		input_A_486_out {Type O LastRead -1 FirstWrite 0}
		input_A_485_out {Type O LastRead -1 FirstWrite 0}
		input_A_484_out {Type O LastRead -1 FirstWrite 0}
		input_A_483_out {Type O LastRead -1 FirstWrite 0}
		input_A_482_out {Type O LastRead -1 FirstWrite 0}
		input_A_481_out {Type O LastRead -1 FirstWrite 0}
		input_A_480_out {Type O LastRead -1 FirstWrite 0}
		input_A_479_out {Type O LastRead -1 FirstWrite 0}
		input_A_478_out {Type O LastRead -1 FirstWrite 0}}}

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
	empty_223 { ap_ovld {  { empty_223_i in_data 0 32 }  { empty_223_o out_data 1 32 }  { empty_223_o_ap_vld out_vld 1 1 } } }
	empty_224 { ap_vld {  { empty_224 out_data 1 4 }  { empty_224_ap_vld out_vld 1 1 } } }
	empty_225 { ap_vld {  { empty_225 out_data 1 4 }  { empty_225_ap_vld out_vld 1 1 } } }
	empty { ap_vld {  { empty out_data 1 1 }  { empty_ap_vld out_vld 1 1 } } }
	input_A_509_out { ap_vld {  { input_A_509_out out_data 1 32 }  { input_A_509_out_ap_vld out_vld 1 1 } } }
	input_A_508_out { ap_vld {  { input_A_508_out out_data 1 32 }  { input_A_508_out_ap_vld out_vld 1 1 } } }
	input_A_507_out { ap_vld {  { input_A_507_out out_data 1 32 }  { input_A_507_out_ap_vld out_vld 1 1 } } }
	input_A_506_out { ap_vld {  { input_A_506_out out_data 1 32 }  { input_A_506_out_ap_vld out_vld 1 1 } } }
	input_A_505_out { ap_vld {  { input_A_505_out out_data 1 32 }  { input_A_505_out_ap_vld out_vld 1 1 } } }
	input_A_504_out { ap_vld {  { input_A_504_out out_data 1 32 }  { input_A_504_out_ap_vld out_vld 1 1 } } }
	input_A_503_out { ap_vld {  { input_A_503_out out_data 1 32 }  { input_A_503_out_ap_vld out_vld 1 1 } } }
	input_A_502_out { ap_vld {  { input_A_502_out out_data 1 32 }  { input_A_502_out_ap_vld out_vld 1 1 } } }
	input_A_501_out { ap_vld {  { input_A_501_out out_data 1 32 }  { input_A_501_out_ap_vld out_vld 1 1 } } }
	input_A_500_out { ap_vld {  { input_A_500_out out_data 1 32 }  { input_A_500_out_ap_vld out_vld 1 1 } } }
	input_A_499_out { ap_vld {  { input_A_499_out out_data 1 32 }  { input_A_499_out_ap_vld out_vld 1 1 } } }
	input_A_498_out { ap_vld {  { input_A_498_out out_data 1 32 }  { input_A_498_out_ap_vld out_vld 1 1 } } }
	input_A_497_out { ap_vld {  { input_A_497_out out_data 1 32 }  { input_A_497_out_ap_vld out_vld 1 1 } } }
	input_A_496_out { ap_vld {  { input_A_496_out out_data 1 32 }  { input_A_496_out_ap_vld out_vld 1 1 } } }
	input_A_495_out { ap_vld {  { input_A_495_out out_data 1 32 }  { input_A_495_out_ap_vld out_vld 1 1 } } }
	input_A_494_out { ap_vld {  { input_A_494_out out_data 1 32 }  { input_A_494_out_ap_vld out_vld 1 1 } } }
	input_A_493_out { ap_vld {  { input_A_493_out out_data 1 32 }  { input_A_493_out_ap_vld out_vld 1 1 } } }
	input_A_492_out { ap_vld {  { input_A_492_out out_data 1 32 }  { input_A_492_out_ap_vld out_vld 1 1 } } }
	input_A_491_out { ap_vld {  { input_A_491_out out_data 1 32 }  { input_A_491_out_ap_vld out_vld 1 1 } } }
	input_A_490_out { ap_vld {  { input_A_490_out out_data 1 32 }  { input_A_490_out_ap_vld out_vld 1 1 } } }
	input_A_489_out { ap_vld {  { input_A_489_out out_data 1 32 }  { input_A_489_out_ap_vld out_vld 1 1 } } }
	input_A_488_out { ap_vld {  { input_A_488_out out_data 1 32 }  { input_A_488_out_ap_vld out_vld 1 1 } } }
	input_A_487_out { ap_vld {  { input_A_487_out out_data 1 32 }  { input_A_487_out_ap_vld out_vld 1 1 } } }
	input_A_486_out { ap_vld {  { input_A_486_out out_data 1 32 }  { input_A_486_out_ap_vld out_vld 1 1 } } }
	input_A_485_out { ap_vld {  { input_A_485_out out_data 1 32 }  { input_A_485_out_ap_vld out_vld 1 1 } } }
	input_A_484_out { ap_vld {  { input_A_484_out out_data 1 32 }  { input_A_484_out_ap_vld out_vld 1 1 } } }
	input_A_483_out { ap_vld {  { input_A_483_out out_data 1 32 }  { input_A_483_out_ap_vld out_vld 1 1 } } }
	input_A_482_out { ap_vld {  { input_A_482_out out_data 1 32 }  { input_A_482_out_ap_vld out_vld 1 1 } } }
	input_A_481_out { ap_vld {  { input_A_481_out out_data 1 32 }  { input_A_481_out_ap_vld out_vld 1 1 } } }
	input_A_480_out { ap_vld {  { input_A_480_out out_data 1 32 }  { input_A_480_out_ap_vld out_vld 1 1 } } }
	input_A_479_out { ap_vld {  { input_A_479_out out_data 1 32 }  { input_A_479_out_ap_vld out_vld 1 1 } } }
	input_A_478_out { ap_vld {  { input_A_478_out out_data 1 32 }  { input_A_478_out_ap_vld out_vld 1 1 } } }
}
