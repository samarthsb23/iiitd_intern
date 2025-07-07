// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat May 31 22:56:27 2025
// Host        : Samarth-Asus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Samarth/Desktop/IIIT_Intern/Tutorial_matrix/Vivado_files/unopt_8_vivado/unopt_8_vivado.gen/sources_1/bd/design_1/ip/design_1_matrixmul_100_unopt_0_0/design_1_matrixmul_100_unopt_0_0_stub.v
// Design      : design_1_matrixmul_100_unopt_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_matrixmul_100_unopt_0_0,matrixmul_100_unopt,{}" *) (* CORE_GENERATION_INFO = "design_1_matrixmul_100_unopt_0_0,matrixmul_100_unopt,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=matrixmul_100_unopt,x_ipVersion=1.0,x_ipCoreRevision=2114107968,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "HLS" *) (* X_CORE_INFO = "matrixmul_100_unopt,Vivado 2024.2" *) (* hls_module = "yes" *) 
module design_1_matrixmul_100_unopt_0_0(ap_clk, ap_rst_n, in_A_TDATA, in_A_TKEEP, 
  in_A_TLAST, in_A_TREADY, in_A_TSTRB, in_A_TVALID, out_C_TDATA, out_C_TKEEP, out_C_TLAST, 
  out_C_TREADY, out_C_TSTRB, out_C_TVALID)
/* synthesis syn_black_box black_box_pad_pin="ap_rst_n,in_A_TDATA[31:0],in_A_TKEEP[3:0],in_A_TLAST[0:0],in_A_TREADY,in_A_TSTRB[3:0],in_A_TVALID,out_C_TDATA[31:0],out_C_TKEEP[3:0],out_C_TLAST[0:0],out_C_TREADY,out_C_TSTRB[3:0],out_C_TVALID" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_A:out_C, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_A, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]in_A_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TKEEP" *) input [3:0]in_A_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TLAST" *) input [0:0]in_A_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TREADY" *) output in_A_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TSTRB" *) input [3:0]in_A_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TVALID" *) input in_A_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_C, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]out_C_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TKEEP" *) output [3:0]out_C_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TLAST" *) output [0:0]out_C_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TREADY" *) input out_C_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TSTRB" *) output [3:0]out_C_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TVALID" *) output out_C_TVALID;
endmodule
