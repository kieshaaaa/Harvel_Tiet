// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfibonacci.h"

extern XFibonacci_Config XFibonacci_ConfigTable[];

XFibonacci_Config *XFibonacci_LookupConfig(u16 DeviceId) {
	XFibonacci_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFIBONACCI_NUM_INSTANCES; Index++) {
		if (XFibonacci_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFibonacci_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFibonacci_Initialize(XFibonacci *InstancePtr, u16 DeviceId) {
	XFibonacci_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFibonacci_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFibonacci_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

