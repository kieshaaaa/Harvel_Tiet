// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmultiplymatrix.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMultiplymatrix_CfgInitialize(XMultiplymatrix *InstancePtr, XMultiplymatrix_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMultiplymatrix_Start(XMultiplymatrix *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMultiplymatrix_IsDone(XMultiplymatrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMultiplymatrix_IsIdle(XMultiplymatrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMultiplymatrix_IsReady(XMultiplymatrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMultiplymatrix_Continue(XMultiplymatrix *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XMultiplymatrix_EnableAutoRestart(XMultiplymatrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMultiplymatrix_DisableAutoRestart(XMultiplymatrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_AP_CTRL, 0);
}

void XMultiplymatrix_Set_mat1(XMultiplymatrix *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_MAT1_DATA, (u32)(Data));
    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_MAT1_DATA + 4, (u32)(Data >> 32));
}

u64 XMultiplymatrix_Get_mat1(XMultiplymatrix *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_MAT1_DATA);
    Data += (u64)XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_MAT1_DATA + 4) << 32;
    return Data;
}

void XMultiplymatrix_Set_mat2(XMultiplymatrix *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_MAT2_DATA, (u32)(Data));
    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_MAT2_DATA + 4, (u32)(Data >> 32));
}

u64 XMultiplymatrix_Get_mat2(XMultiplymatrix *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_MAT2_DATA);
    Data += (u64)XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_MAT2_DATA + 4) << 32;
    return Data;
}

void XMultiplymatrix_Set_result(XMultiplymatrix *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_RESULT_DATA, (u32)(Data));
    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_RESULT_DATA + 4, (u32)(Data >> 32));
}

u64 XMultiplymatrix_Get_result(XMultiplymatrix *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_RESULT_DATA);
    Data += (u64)XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_RESULT_DATA + 4) << 32;
    return Data;
}

void XMultiplymatrix_InterruptGlobalEnable(XMultiplymatrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_GIE, 1);
}

void XMultiplymatrix_InterruptGlobalDisable(XMultiplymatrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_GIE, 0);
}

void XMultiplymatrix_InterruptEnable(XMultiplymatrix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_IER);
    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_IER, Register | Mask);
}

void XMultiplymatrix_InterruptDisable(XMultiplymatrix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_IER);
    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMultiplymatrix_InterruptClear(XMultiplymatrix *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultiplymatrix_WriteReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_ISR, Mask);
}

u32 XMultiplymatrix_InterruptGetEnabled(XMultiplymatrix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_IER);
}

u32 XMultiplymatrix_InterruptGetStatus(XMultiplymatrix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMultiplymatrix_ReadReg(InstancePtr->Control_BaseAddress, XMULTIPLYMATRIX_CONTROL_ADDR_ISR);
}

