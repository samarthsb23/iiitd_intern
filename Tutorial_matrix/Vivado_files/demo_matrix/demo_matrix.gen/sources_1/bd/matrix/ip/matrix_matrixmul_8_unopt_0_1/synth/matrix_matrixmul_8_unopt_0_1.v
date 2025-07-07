// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:matrixmul_8_unopt:1.0
// IP Revision: 2114110345

(* X_CORE_INFO = "matrixmul_8_unopt,Vivado 2024.2" *)
(* CHECK_LICENSE_TYPE = "matrix_matrixmul_8_unopt_0_1,matrixmul_8_unopt,{}" *)
(* CORE_GENERATION_INFO = "matrix_matrixmul_8_unopt_0_1,matrixmul_8_unopt,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=matrixmul_8_unopt,x_ipVersion=1.0,x_ipCoreRevision=2114110345,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module matrix_matrixmul_8_unopt_0_1 (
  ap_clk,
  ap_rst_n,
  in_A_TDATA,
  in_A_TKEEP,
  in_A_TLAST,
  in_A_TREADY,
  in_A_TSTRB,
  in_A_TVALID,
  out_C_TDATA,
  out_C_TKEEP,
  out_C_TLAST,
  out_C_TREADY,
  out_C_TSTRB,
  out_C_TVALID
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_A:out_C, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN matrix_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_A, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN matrix_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [31 : 0] in_A_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TKEEP" *)
input wire [3 : 0] in_A_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TLAST" *)
input wire [0 : 0] in_A_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TREADY" *)
output wire in_A_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TSTRB" *)
input wire [3 : 0] in_A_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_A TVALID" *)
input wire in_A_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_C, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN matrix_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [31 : 0] out_C_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TKEEP" *)
output wire [3 : 0] out_C_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TLAST" *)
output wire [0 : 0] out_C_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TREADY" *)
input wire out_C_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TSTRB" *)
output wire [3 : 0] out_C_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_C TVALID" *)
output wire out_C_TVALID;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  matrixmul_8_unopt inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .in_A_TDATA(in_A_TDATA),
    .in_A_TKEEP(in_A_TKEEP),
    .in_A_TLAST(in_A_TLAST),
    .in_A_TREADY(in_A_TREADY),
    .in_A_TSTRB(in_A_TSTRB),
    .in_A_TVALID(in_A_TVALID),
    .out_C_TDATA(out_C_TDATA),
    .out_C_TKEEP(out_C_TKEEP),
    .out_C_TLAST(out_C_TLAST),
    .out_C_TREADY(out_C_TREADY),
    .out_C_TSTRB(out_C_TSTRB),
    .out_C_TVALID(out_C_TVALID)
  );
endmodule
