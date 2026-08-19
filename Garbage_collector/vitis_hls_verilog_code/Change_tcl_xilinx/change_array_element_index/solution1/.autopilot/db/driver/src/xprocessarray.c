// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xprocessarray.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XProcessarray_CfgInitialize(XProcessarray *InstancePtr, XProcessarray_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XProcessarray_Set_arr_0(XProcessarray *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_0_DATA, (u32)(Data));
    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_0_DATA + 4, (u32)(Data >> 32));
}

u64 XProcessarray_Get_arr_0(XProcessarray *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_0_DATA);
    Data += (u64)XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_0_DATA + 4) << 32;
    return Data;
}

void XProcessarray_Set_arr_1(XProcessarray *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_1_DATA, (u32)(Data));
    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_1_DATA + 4, (u32)(Data >> 32));
}

u64 XProcessarray_Get_arr_1(XProcessarray *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_1_DATA);
    Data += (u64)XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_1_DATA + 4) << 32;
    return Data;
}

void XProcessarray_Set_arr_2(XProcessarray *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_2_DATA, (u32)(Data));
    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_2_DATA + 4, (u32)(Data >> 32));
}

u64 XProcessarray_Get_arr_2(XProcessarray *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_2_DATA);
    Data += (u64)XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_2_DATA + 4) << 32;
    return Data;
}

void XProcessarray_Set_arr_3(XProcessarray *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_3_DATA, (u32)(Data));
    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_3_DATA + 4, (u32)(Data >> 32));
}

u64 XProcessarray_Get_arr_3(XProcessarray *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_3_DATA);
    Data += (u64)XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_3_DATA + 4) << 32;
    return Data;
}

void XProcessarray_Set_arr_4(XProcessarray *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_4_DATA, (u32)(Data));
    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_4_DATA + 4, (u32)(Data >> 32));
}

u64 XProcessarray_Get_arr_4(XProcessarray *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_4_DATA);
    Data += (u64)XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_4_DATA + 4) << 32;
    return Data;
}

void XProcessarray_Set_arr_5(XProcessarray *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_5_DATA, (u32)(Data));
    XProcessarray_WriteReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_5_DATA + 4, (u32)(Data >> 32));
}

u64 XProcessarray_Get_arr_5(XProcessarray *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_5_DATA);
    Data += (u64)XProcessarray_ReadReg(InstancePtr->Control_BaseAddress, XPROCESSARRAY_CONTROL_ADDR_ARR_5_DATA + 4) << 32;
    return Data;
}

