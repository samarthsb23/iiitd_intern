// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xlab_1.h"

extern XLab_1_Config XLab_1_ConfigTable[];

XLab_1_Config *XLab_1_LookupConfig(u16 DeviceId) {
	XLab_1_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLAB_1_NUM_INSTANCES; Index++) {
		if (XLab_1_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLab_1_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLab_1_Initialize(XLab_1 *InstancePtr, u16 DeviceId) {
	XLab_1_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLab_1_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLab_1_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

