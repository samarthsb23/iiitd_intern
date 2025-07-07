// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of A_V
//        bit 31~0 - A_V[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of B_V
//        bit 31~0 - B_V[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of C_V
//        bit 31~0 - C_V[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of Y_V
//        bit 31~0 - Y_V[31:0] (Read)
// 0x2c : Control signal of Y_V
//        bit 0  - Y_V_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XLAB_1_AXILITES_ADDR_A_V_DATA 0x10
#define XLAB_1_AXILITES_BITS_A_V_DATA 32
#define XLAB_1_AXILITES_ADDR_B_V_DATA 0x18
#define XLAB_1_AXILITES_BITS_B_V_DATA 32
#define XLAB_1_AXILITES_ADDR_C_V_DATA 0x20
#define XLAB_1_AXILITES_BITS_C_V_DATA 32
#define XLAB_1_AXILITES_ADDR_Y_V_DATA 0x28
#define XLAB_1_AXILITES_BITS_Y_V_DATA 32
#define XLAB_1_AXILITES_ADDR_Y_V_CTRL 0x2c

