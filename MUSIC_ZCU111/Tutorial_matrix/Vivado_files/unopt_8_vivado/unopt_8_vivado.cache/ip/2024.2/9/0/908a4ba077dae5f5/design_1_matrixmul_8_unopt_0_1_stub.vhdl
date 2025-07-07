-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Fri May 30 15:04:11 2025
-- Host        : Samarth-Asus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_matrixmul_8_unopt_0_1_stub.vhdl
-- Design      : design_1_matrixmul_8_unopt_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in_A_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_A_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_A_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_A_TREADY : out STD_LOGIC;
    in_A_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_A_TVALID : in STD_LOGIC;
    out_C_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_C_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    out_C_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_C_TREADY : in STD_LOGIC;
    out_C_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    out_C_TVALID : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_matrixmul_8_unopt_0_1,matrixmul_8_unopt,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_matrixmul_8_unopt_0_1,matrixmul_8_unopt,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=matrixmul_8_unopt,x_ipVersion=1.0,x_ipCoreRevision=2114106060,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,in_A_TDATA[31:0],in_A_TKEEP[3:0],in_A_TLAST[0:0],in_A_TREADY,in_A_TSTRB[3:0],in_A_TVALID,out_C_TDATA[31:0],out_C_TKEEP[3:0],out_C_TLAST[0:0],out_C_TREADY,out_C_TSTRB[3:0],out_C_TVALID";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_A:out_C, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of in_A_TDATA : signal is "xilinx.com:interface:axis:1.0 in_A TDATA";
  attribute X_INTERFACE_MODE of in_A_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of in_A_TDATA : signal is "XIL_INTERFACENAME in_A, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of in_A_TKEEP : signal is "xilinx.com:interface:axis:1.0 in_A TKEEP";
  attribute X_INTERFACE_INFO of in_A_TLAST : signal is "xilinx.com:interface:axis:1.0 in_A TLAST";
  attribute X_INTERFACE_INFO of in_A_TREADY : signal is "xilinx.com:interface:axis:1.0 in_A TREADY";
  attribute X_INTERFACE_INFO of in_A_TSTRB : signal is "xilinx.com:interface:axis:1.0 in_A TSTRB";
  attribute X_INTERFACE_INFO of in_A_TVALID : signal is "xilinx.com:interface:axis:1.0 in_A TVALID";
  attribute X_INTERFACE_INFO of out_C_TDATA : signal is "xilinx.com:interface:axis:1.0 out_C TDATA";
  attribute X_INTERFACE_MODE of out_C_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of out_C_TDATA : signal is "XIL_INTERFACENAME out_C, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of out_C_TKEEP : signal is "xilinx.com:interface:axis:1.0 out_C TKEEP";
  attribute X_INTERFACE_INFO of out_C_TLAST : signal is "xilinx.com:interface:axis:1.0 out_C TLAST";
  attribute X_INTERFACE_INFO of out_C_TREADY : signal is "xilinx.com:interface:axis:1.0 out_C TREADY";
  attribute X_INTERFACE_INFO of out_C_TSTRB : signal is "xilinx.com:interface:axis:1.0 out_C TSTRB";
  attribute X_INTERFACE_INFO of out_C_TVALID : signal is "xilinx.com:interface:axis:1.0 out_C TVALID";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "matrixmul_8_unopt,Vivado 2024.2";
begin
end;
