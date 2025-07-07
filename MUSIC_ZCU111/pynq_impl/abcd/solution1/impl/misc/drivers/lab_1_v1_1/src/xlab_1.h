// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XLAB_1_H
#define XLAB_1_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xlab_1_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XLab_1_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XLab_1;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLab_1_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLab_1_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLab_1_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLab_1_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XLab_1_Initialize(XLab_1 *InstancePtr, u16 DeviceId);
XLab_1_Config* XLab_1_LookupConfig(u16 DeviceId);
int XLab_1_CfgInitialize(XLab_1 *InstancePtr, XLab_1_Config *ConfigPtr);
#else
int XLab_1_Initialize(XLab_1 *InstancePtr, const char* InstanceName);
int XLab_1_Release(XLab_1 *InstancePtr);
#endif


void XLab_1_Set_A_V(XLab_1 *InstancePtr, u32 Data);
u32 XLab_1_Get_A_V(XLab_1 *InstancePtr);
void XLab_1_Set_B_V(XLab_1 *InstancePtr, u32 Data);
u32 XLab_1_Get_B_V(XLab_1 *InstancePtr);
void XLab_1_Set_C_V(XLab_1 *InstancePtr, u32 Data);
u32 XLab_1_Get_C_V(XLab_1 *InstancePtr);
u32 XLab_1_Get_Y_V(XLab_1 *InstancePtr);
u32 XLab_1_Get_Y_V_vld(XLab_1 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
