set moduleName matrixmul_32_opt_Pipeline_loop_input_A231
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
set C_modelName {matrixmul_32_opt_Pipeline_loop_input_A231}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_A_V_data_V int 32 regular {axi_s 0 volatile  { in_A Data } }  }
	{ in_A_V_keep_V int 4 regular {axi_s 0 volatile  { in_A Keep } }  }
	{ in_A_V_strb_V int 4 regular {axi_s 0 volatile  { in_A Strb } }  }
	{ in_A_V_last_V int 1 regular {axi_s 0 volatile  { in_A Last } }  }
	{ empty_220 int 32 regular {pointer 2}  }
	{ empty_221 int 4 regular {pointer 1}  }
	{ empty_222 int 4 regular {pointer 1}  }
	{ empty int 1 regular {pointer 1}  }
	{ input_A_574_out float 32 regular {pointer 1}  }
	{ input_A_573_out float 32 regular {pointer 1}  }
	{ input_A_572_out float 32 regular {pointer 1}  }
	{ input_A_571_out float 32 regular {pointer 1}  }
	{ input_A_570_out float 32 regular {pointer 1}  }
	{ input_A_569_out float 32 regular {pointer 1}  }
	{ input_A_568_out float 32 regular {pointer 1}  }
	{ input_A_567_out float 32 regular {pointer 1}  }
	{ input_A_566_out float 32 regular {pointer 1}  }
	{ input_A_565_out float 32 regular {pointer 1}  }
	{ input_A_564_out float 32 regular {pointer 1}  }
	{ input_A_563_out float 32 regular {pointer 1}  }
	{ input_A_562_out float 32 regular {pointer 1}  }
	{ input_A_561_out float 32 regular {pointer 1}  }
	{ input_A_560_out float 32 regular {pointer 1}  }
	{ input_A_559_out float 32 regular {pointer 1}  }
	{ input_A_558_out float 32 regular {pointer 1}  }
	{ input_A_557_out float 32 regular {pointer 1}  }
	{ input_A_556_out float 32 regular {pointer 1}  }
	{ input_A_555_out float 32 regular {pointer 1}  }
	{ input_A_554_out float 32 regular {pointer 1}  }
	{ input_A_553_out float 32 regular {pointer 1}  }
	{ input_A_552_out float 32 regular {pointer 1}  }
	{ input_A_551_out float 32 regular {pointer 1}  }
	{ input_A_550_out float 32 regular {pointer 1}  }
	{ input_A_549_out float 32 regular {pointer 1}  }
	{ input_A_548_out float 32 regular {pointer 1}  }
	{ input_A_547_out float 32 regular {pointer 1}  }
	{ input_A_546_out float 32 regular {pointer 1}  }
	{ input_A_545_out float 32 regular {pointer 1}  }
	{ input_A_544_out float 32 regular {pointer 1}  }
	{ input_A_543_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_220", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_221", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_222", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_574_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_573_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_572_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_571_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_570_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_569_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_568_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_567_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_566_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_565_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_564_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_563_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_562_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_561_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_560_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_559_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_558_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_557_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_556_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_555_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_554_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_553_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_552_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_551_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_550_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_549_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_548_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_547_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_546_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_545_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_544_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_A_543_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ empty_220_i sc_in sc_lv 32 signal 4 } 
	{ empty_220_o sc_out sc_lv 32 signal 4 } 
	{ empty_220_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ empty_221 sc_out sc_lv 4 signal 5 } 
	{ empty_221_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ empty_222 sc_out sc_lv 4 signal 6 } 
	{ empty_222_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ empty sc_out sc_lv 1 signal 7 } 
	{ empty_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_A_574_out sc_out sc_lv 32 signal 8 } 
	{ input_A_574_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_A_573_out sc_out sc_lv 32 signal 9 } 
	{ input_A_573_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ input_A_572_out sc_out sc_lv 32 signal 10 } 
	{ input_A_572_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_A_571_out sc_out sc_lv 32 signal 11 } 
	{ input_A_571_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ input_A_570_out sc_out sc_lv 32 signal 12 } 
	{ input_A_570_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ input_A_569_out sc_out sc_lv 32 signal 13 } 
	{ input_A_569_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ input_A_568_out sc_out sc_lv 32 signal 14 } 
	{ input_A_568_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ input_A_567_out sc_out sc_lv 32 signal 15 } 
	{ input_A_567_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ input_A_566_out sc_out sc_lv 32 signal 16 } 
	{ input_A_566_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ input_A_565_out sc_out sc_lv 32 signal 17 } 
	{ input_A_565_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ input_A_564_out sc_out sc_lv 32 signal 18 } 
	{ input_A_564_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ input_A_563_out sc_out sc_lv 32 signal 19 } 
	{ input_A_563_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ input_A_562_out sc_out sc_lv 32 signal 20 } 
	{ input_A_562_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ input_A_561_out sc_out sc_lv 32 signal 21 } 
	{ input_A_561_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ input_A_560_out sc_out sc_lv 32 signal 22 } 
	{ input_A_560_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ input_A_559_out sc_out sc_lv 32 signal 23 } 
	{ input_A_559_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ input_A_558_out sc_out sc_lv 32 signal 24 } 
	{ input_A_558_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ input_A_557_out sc_out sc_lv 32 signal 25 } 
	{ input_A_557_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ input_A_556_out sc_out sc_lv 32 signal 26 } 
	{ input_A_556_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ input_A_555_out sc_out sc_lv 32 signal 27 } 
	{ input_A_555_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ input_A_554_out sc_out sc_lv 32 signal 28 } 
	{ input_A_554_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ input_A_553_out sc_out sc_lv 32 signal 29 } 
	{ input_A_553_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ input_A_552_out sc_out sc_lv 32 signal 30 } 
	{ input_A_552_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ input_A_551_out sc_out sc_lv 32 signal 31 } 
	{ input_A_551_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ input_A_550_out sc_out sc_lv 32 signal 32 } 
	{ input_A_550_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ input_A_549_out sc_out sc_lv 32 signal 33 } 
	{ input_A_549_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ input_A_548_out sc_out sc_lv 32 signal 34 } 
	{ input_A_548_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ input_A_547_out sc_out sc_lv 32 signal 35 } 
	{ input_A_547_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ input_A_546_out sc_out sc_lv 32 signal 36 } 
	{ input_A_546_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ input_A_545_out sc_out sc_lv 32 signal 37 } 
	{ input_A_545_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ input_A_544_out sc_out sc_lv 32 signal 38 } 
	{ input_A_544_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ input_A_543_out sc_out sc_lv 32 signal 39 } 
	{ input_A_543_out_ap_vld sc_out sc_logic 1 outvld 39 } 
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
 	{ "name": "empty_220_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_220", "role": "i" }} , 
 	{ "name": "empty_220_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_220", "role": "o" }} , 
 	{ "name": "empty_220_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_220", "role": "o_ap_vld" }} , 
 	{ "name": "empty_221", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_221", "role": "default" }} , 
 	{ "name": "empty_221_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_221", "role": "ap_vld" }} , 
 	{ "name": "empty_222", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_222", "role": "default" }} , 
 	{ "name": "empty_222_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty_222", "role": "ap_vld" }} , 
 	{ "name": "empty", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "empty_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "empty", "role": "ap_vld" }} , 
 	{ "name": "input_A_574_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_574_out", "role": "default" }} , 
 	{ "name": "input_A_574_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_574_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_573_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_573_out", "role": "default" }} , 
 	{ "name": "input_A_573_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_573_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_572_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_572_out", "role": "default" }} , 
 	{ "name": "input_A_572_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_572_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_571_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_571_out", "role": "default" }} , 
 	{ "name": "input_A_571_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_571_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_570_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_570_out", "role": "default" }} , 
 	{ "name": "input_A_570_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_570_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_569_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_569_out", "role": "default" }} , 
 	{ "name": "input_A_569_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_569_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_568_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_568_out", "role": "default" }} , 
 	{ "name": "input_A_568_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_568_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_567_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_567_out", "role": "default" }} , 
 	{ "name": "input_A_567_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_567_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_566_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_566_out", "role": "default" }} , 
 	{ "name": "input_A_566_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_566_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_565_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_565_out", "role": "default" }} , 
 	{ "name": "input_A_565_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_565_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_564_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_564_out", "role": "default" }} , 
 	{ "name": "input_A_564_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_564_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_563_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_563_out", "role": "default" }} , 
 	{ "name": "input_A_563_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_563_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_562_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_562_out", "role": "default" }} , 
 	{ "name": "input_A_562_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_562_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_561_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_561_out", "role": "default" }} , 
 	{ "name": "input_A_561_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_561_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_560_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_560_out", "role": "default" }} , 
 	{ "name": "input_A_560_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_560_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_559_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_559_out", "role": "default" }} , 
 	{ "name": "input_A_559_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_559_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_558_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_558_out", "role": "default" }} , 
 	{ "name": "input_A_558_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_558_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_557_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_557_out", "role": "default" }} , 
 	{ "name": "input_A_557_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_557_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_556_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_556_out", "role": "default" }} , 
 	{ "name": "input_A_556_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_556_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_555_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_555_out", "role": "default" }} , 
 	{ "name": "input_A_555_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_555_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_554_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_554_out", "role": "default" }} , 
 	{ "name": "input_A_554_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_554_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_553_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_553_out", "role": "default" }} , 
 	{ "name": "input_A_553_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_553_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_552_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_552_out", "role": "default" }} , 
 	{ "name": "input_A_552_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_552_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_551_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_551_out", "role": "default" }} , 
 	{ "name": "input_A_551_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_551_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_550_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_550_out", "role": "default" }} , 
 	{ "name": "input_A_550_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_550_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_549_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_549_out", "role": "default" }} , 
 	{ "name": "input_A_549_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_549_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_548_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_548_out", "role": "default" }} , 
 	{ "name": "input_A_548_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_548_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_547_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_547_out", "role": "default" }} , 
 	{ "name": "input_A_547_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_547_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_546_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_546_out", "role": "default" }} , 
 	{ "name": "input_A_546_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_546_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_545_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_545_out", "role": "default" }} , 
 	{ "name": "input_A_545_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_545_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_544_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_544_out", "role": "default" }} , 
 	{ "name": "input_A_544_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_544_out", "role": "ap_vld" }} , 
 	{ "name": "input_A_543_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_A_543_out", "role": "default" }} , 
 	{ "name": "input_A_543_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_A_543_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrixmul_32_opt_Pipeline_loop_input_A231",
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
			{"Name" : "empty_220", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "empty_221", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty_222", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_574_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_573_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_572_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_571_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_570_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_569_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_568_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_567_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_566_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_565_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_564_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_563_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_562_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_561_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_560_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_559_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_558_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_557_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_556_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_555_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_554_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_553_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_552_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_551_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_550_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_549_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_548_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_547_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_546_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_545_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_544_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_A_543_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_input_A2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul_32_opt_Pipeline_loop_input_A231 {
		in_A_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_A_V_last_V {Type I LastRead 1 FirstWrite -1}
		empty_220 {Type IO LastRead 1 FirstWrite 1}
		empty_221 {Type O LastRead -1 FirstWrite 1}
		empty_222 {Type O LastRead -1 FirstWrite 1}
		empty {Type O LastRead -1 FirstWrite 1}
		input_A_574_out {Type O LastRead -1 FirstWrite 0}
		input_A_573_out {Type O LastRead -1 FirstWrite 0}
		input_A_572_out {Type O LastRead -1 FirstWrite 0}
		input_A_571_out {Type O LastRead -1 FirstWrite 0}
		input_A_570_out {Type O LastRead -1 FirstWrite 0}
		input_A_569_out {Type O LastRead -1 FirstWrite 0}
		input_A_568_out {Type O LastRead -1 FirstWrite 0}
		input_A_567_out {Type O LastRead -1 FirstWrite 0}
		input_A_566_out {Type O LastRead -1 FirstWrite 0}
		input_A_565_out {Type O LastRead -1 FirstWrite 0}
		input_A_564_out {Type O LastRead -1 FirstWrite 0}
		input_A_563_out {Type O LastRead -1 FirstWrite 0}
		input_A_562_out {Type O LastRead -1 FirstWrite 0}
		input_A_561_out {Type O LastRead -1 FirstWrite 0}
		input_A_560_out {Type O LastRead -1 FirstWrite 0}
		input_A_559_out {Type O LastRead -1 FirstWrite 0}
		input_A_558_out {Type O LastRead -1 FirstWrite 0}
		input_A_557_out {Type O LastRead -1 FirstWrite 0}
		input_A_556_out {Type O LastRead -1 FirstWrite 0}
		input_A_555_out {Type O LastRead -1 FirstWrite 0}
		input_A_554_out {Type O LastRead -1 FirstWrite 0}
		input_A_553_out {Type O LastRead -1 FirstWrite 0}
		input_A_552_out {Type O LastRead -1 FirstWrite 0}
		input_A_551_out {Type O LastRead -1 FirstWrite 0}
		input_A_550_out {Type O LastRead -1 FirstWrite 0}
		input_A_549_out {Type O LastRead -1 FirstWrite 0}
		input_A_548_out {Type O LastRead -1 FirstWrite 0}
		input_A_547_out {Type O LastRead -1 FirstWrite 0}
		input_A_546_out {Type O LastRead -1 FirstWrite 0}
		input_A_545_out {Type O LastRead -1 FirstWrite 0}
		input_A_544_out {Type O LastRead -1 FirstWrite 0}
		input_A_543_out {Type O LastRead -1 FirstWrite 0}}}

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
	empty_220 { ap_ovld {  { empty_220_i in_data 0 32 }  { empty_220_o out_data 1 32 }  { empty_220_o_ap_vld out_vld 1 1 } } }
	empty_221 { ap_vld {  { empty_221 out_data 1 4 }  { empty_221_ap_vld out_vld 1 1 } } }
	empty_222 { ap_vld {  { empty_222 out_data 1 4 }  { empty_222_ap_vld out_vld 1 1 } } }
	empty { ap_vld {  { empty out_data 1 1 }  { empty_ap_vld out_vld 1 1 } } }
	input_A_574_out { ap_vld {  { input_A_574_out out_data 1 32 }  { input_A_574_out_ap_vld out_vld 1 1 } } }
	input_A_573_out { ap_vld {  { input_A_573_out out_data 1 32 }  { input_A_573_out_ap_vld out_vld 1 1 } } }
	input_A_572_out { ap_vld {  { input_A_572_out out_data 1 32 }  { input_A_572_out_ap_vld out_vld 1 1 } } }
	input_A_571_out { ap_vld {  { input_A_571_out out_data 1 32 }  { input_A_571_out_ap_vld out_vld 1 1 } } }
	input_A_570_out { ap_vld {  { input_A_570_out out_data 1 32 }  { input_A_570_out_ap_vld out_vld 1 1 } } }
	input_A_569_out { ap_vld {  { input_A_569_out out_data 1 32 }  { input_A_569_out_ap_vld out_vld 1 1 } } }
	input_A_568_out { ap_vld {  { input_A_568_out out_data 1 32 }  { input_A_568_out_ap_vld out_vld 1 1 } } }
	input_A_567_out { ap_vld {  { input_A_567_out out_data 1 32 }  { input_A_567_out_ap_vld out_vld 1 1 } } }
	input_A_566_out { ap_vld {  { input_A_566_out out_data 1 32 }  { input_A_566_out_ap_vld out_vld 1 1 } } }
	input_A_565_out { ap_vld {  { input_A_565_out out_data 1 32 }  { input_A_565_out_ap_vld out_vld 1 1 } } }
	input_A_564_out { ap_vld {  { input_A_564_out out_data 1 32 }  { input_A_564_out_ap_vld out_vld 1 1 } } }
	input_A_563_out { ap_vld {  { input_A_563_out out_data 1 32 }  { input_A_563_out_ap_vld out_vld 1 1 } } }
	input_A_562_out { ap_vld {  { input_A_562_out out_data 1 32 }  { input_A_562_out_ap_vld out_vld 1 1 } } }
	input_A_561_out { ap_vld {  { input_A_561_out out_data 1 32 }  { input_A_561_out_ap_vld out_vld 1 1 } } }
	input_A_560_out { ap_vld {  { input_A_560_out out_data 1 32 }  { input_A_560_out_ap_vld out_vld 1 1 } } }
	input_A_559_out { ap_vld {  { input_A_559_out out_data 1 32 }  { input_A_559_out_ap_vld out_vld 1 1 } } }
	input_A_558_out { ap_vld {  { input_A_558_out out_data 1 32 }  { input_A_558_out_ap_vld out_vld 1 1 } } }
	input_A_557_out { ap_vld {  { input_A_557_out out_data 1 32 }  { input_A_557_out_ap_vld out_vld 1 1 } } }
	input_A_556_out { ap_vld {  { input_A_556_out out_data 1 32 }  { input_A_556_out_ap_vld out_vld 1 1 } } }
	input_A_555_out { ap_vld {  { input_A_555_out out_data 1 32 }  { input_A_555_out_ap_vld out_vld 1 1 } } }
	input_A_554_out { ap_vld {  { input_A_554_out out_data 1 32 }  { input_A_554_out_ap_vld out_vld 1 1 } } }
	input_A_553_out { ap_vld {  { input_A_553_out out_data 1 32 }  { input_A_553_out_ap_vld out_vld 1 1 } } }
	input_A_552_out { ap_vld {  { input_A_552_out out_data 1 32 }  { input_A_552_out_ap_vld out_vld 1 1 } } }
	input_A_551_out { ap_vld {  { input_A_551_out out_data 1 32 }  { input_A_551_out_ap_vld out_vld 1 1 } } }
	input_A_550_out { ap_vld {  { input_A_550_out out_data 1 32 }  { input_A_550_out_ap_vld out_vld 1 1 } } }
	input_A_549_out { ap_vld {  { input_A_549_out out_data 1 32 }  { input_A_549_out_ap_vld out_vld 1 1 } } }
	input_A_548_out { ap_vld {  { input_A_548_out out_data 1 32 }  { input_A_548_out_ap_vld out_vld 1 1 } } }
	input_A_547_out { ap_vld {  { input_A_547_out out_data 1 32 }  { input_A_547_out_ap_vld out_vld 1 1 } } }
	input_A_546_out { ap_vld {  { input_A_546_out out_data 1 32 }  { input_A_546_out_ap_vld out_vld 1 1 } } }
	input_A_545_out { ap_vld {  { input_A_545_out out_data 1 32 }  { input_A_545_out_ap_vld out_vld 1 1 } } }
	input_A_544_out { ap_vld {  { input_A_544_out out_data 1 32 }  { input_A_544_out_ap_vld out_vld 1 1 } } }
	input_A_543_out { ap_vld {  { input_A_543_out out_data 1 32 }  { input_A_543_out_ap_vld out_vld 1 1 } } }
}
