// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xlab_1.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLab_1_CfgInitialize(XLab_1 *InstancePtr, XLab_1_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLab_1_Set_A_V(XLab_1 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLab_1_WriteReg(InstancePtr->Axilites_BaseAddress, XLAB_1_AXILITES_ADDR_A_V_DATA, Data);
}

u32 XLab_1_Get_A_V(XLab_1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLab_1_ReadReg(InstancePtr->Axilites_BaseAddress, XLAB_1_AXILITES_ADDR_A_V_DATA);
    return Data;
}

void XLab_1_Set_B_V(XLab_1 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLab_1_WriteReg(InstancePtr->Axilites_BaseAddress, XLAB_1_AXILITES_ADDR_B_V_DATA, Data);
}

u32 XLab_1_Get_B_V(XLab_1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLab_1_ReadReg(InstancePtr->Axilites_BaseAddress, XLAB_1_AXILITES_ADDR_B_V_DATA);
    return Data;
}

void XLab_1_Set_C_V(XLab_1 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLab_1_WriteReg(InstancePtr->Axilites_BaseAddress, XLAB_1_AXILITES_ADDR_C_V_DATA, Data);
}

u32 XLab_1_Get_C_V(XLab_1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLab_1_ReadReg(InstancePtr->Axilites_BaseAddress, XLAB_1_AXILITES_ADDR_C_V_DATA);
    return Data;
}

u32 XLab_1_Get_Y_V(XLab_1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLab_1_ReadReg(InstancePtr->Axilites_BaseAddress, XLAB_1_AXILITES_ADDR_Y_V_DATA);
    return Data;
}

u32 XLab_1_Get_Y_V_vld(XLab_1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLab_1_ReadReg(InstancePtr->Axilites_BaseAddress, XLAB_1_AXILITES_ADDR_Y_V_CTRL);
    return Data & 0x1;
}

