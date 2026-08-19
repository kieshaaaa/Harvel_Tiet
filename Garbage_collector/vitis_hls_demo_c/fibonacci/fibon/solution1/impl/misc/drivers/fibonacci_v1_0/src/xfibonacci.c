// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfibonacci.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFibonacci_CfgInitialize(XFibonacci *InstancePtr, XFibonacci_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFibonacci_Start(XFibonacci *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFibonacci_ReadReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFibonacci_WriteReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFibonacci_IsDone(XFibonacci *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFibonacci_ReadReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFibonacci_IsIdle(XFibonacci *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFibonacci_ReadReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFibonacci_IsReady(XFibonacci *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFibonacci_ReadReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFibonacci_Continue(XFibonacci *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFibonacci_ReadReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFibonacci_WriteReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XFibonacci_EnableAutoRestart(XFibonacci *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFibonacci_WriteReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFibonacci_DisableAutoRestart(XFibonacci *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFibonacci_WriteReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_AP_CTRL, 0);
}

void XFibonacci_Set_n(XFibonacci *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFibonacci_WriteReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_N_DATA, Data);
}

u32 XFibonacci_Get_n(XFibonacci *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFibonacci_ReadReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_N_DATA);
    return Data;
}

void XFibonacci_InterruptGlobalEnable(XFibonacci *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFibonacci_WriteReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_GIE, 1);
}

void XFibonacci_InterruptGlobalDisable(XFibonacci *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFibonacci_WriteReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_GIE, 0);
}

void XFibonacci_InterruptEnable(XFibonacci *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFibonacci_ReadReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_IER);
    XFibonacci_WriteReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_IER, Register | Mask);
}

void XFibonacci_InterruptDisable(XFibonacci *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFibonacci_ReadReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_IER);
    XFibonacci_WriteReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFibonacci_InterruptClear(XFibonacci *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFibonacci_WriteReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_ISR, Mask);
}

u32 XFibonacci_InterruptGetEnabled(XFibonacci *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFibonacci_ReadReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_IER);
}

u32 XFibonacci_InterruptGetStatus(XFibonacci *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFibonacci_ReadReg(InstancePtr->Control_BaseAddress, XFIBONACCI_CONTROL_ADDR_ISR);
}

