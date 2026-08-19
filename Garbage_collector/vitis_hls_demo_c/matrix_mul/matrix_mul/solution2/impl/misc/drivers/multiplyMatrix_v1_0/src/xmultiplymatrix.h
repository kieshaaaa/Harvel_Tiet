// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMULTIPLYMATRIX_H
#define XMULTIPLYMATRIX_H

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
#include "xmultiplymatrix_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XMultiplymatrix_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMultiplymatrix;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMultiplymatrix_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMultiplymatrix_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMultiplymatrix_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMultiplymatrix_ReadReg(BaseAddress, RegOffset) \
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
int XMultiplymatrix_Initialize(XMultiplymatrix *InstancePtr, u16 DeviceId);
XMultiplymatrix_Config* XMultiplymatrix_LookupConfig(u16 DeviceId);
int XMultiplymatrix_CfgInitialize(XMultiplymatrix *InstancePtr, XMultiplymatrix_Config *ConfigPtr);
#else
int XMultiplymatrix_Initialize(XMultiplymatrix *InstancePtr, const char* InstanceName);
int XMultiplymatrix_Release(XMultiplymatrix *InstancePtr);
#endif

void XMultiplymatrix_Start(XMultiplymatrix *InstancePtr);
u32 XMultiplymatrix_IsDone(XMultiplymatrix *InstancePtr);
u32 XMultiplymatrix_IsIdle(XMultiplymatrix *InstancePtr);
u32 XMultiplymatrix_IsReady(XMultiplymatrix *InstancePtr);
void XMultiplymatrix_Continue(XMultiplymatrix *InstancePtr);
void XMultiplymatrix_EnableAutoRestart(XMultiplymatrix *InstancePtr);
void XMultiplymatrix_DisableAutoRestart(XMultiplymatrix *InstancePtr);

void XMultiplymatrix_Set_mat1_0(XMultiplymatrix *InstancePtr, u64 Data);
u64 XMultiplymatrix_Get_mat1_0(XMultiplymatrix *InstancePtr);
void XMultiplymatrix_Set_mat1_1(XMultiplymatrix *InstancePtr, u64 Data);
u64 XMultiplymatrix_Get_mat1_1(XMultiplymatrix *InstancePtr);
void XMultiplymatrix_Set_mat1_2(XMultiplymatrix *InstancePtr, u64 Data);
u64 XMultiplymatrix_Get_mat1_2(XMultiplymatrix *InstancePtr);
void XMultiplymatrix_Set_mat2(XMultiplymatrix *InstancePtr, u64 Data);
u64 XMultiplymatrix_Get_mat2(XMultiplymatrix *InstancePtr);
void XMultiplymatrix_Set_result_0(XMultiplymatrix *InstancePtr, u64 Data);
u64 XMultiplymatrix_Get_result_0(XMultiplymatrix *InstancePtr);
void XMultiplymatrix_Set_result_1(XMultiplymatrix *InstancePtr, u64 Data);
u64 XMultiplymatrix_Get_result_1(XMultiplymatrix *InstancePtr);
void XMultiplymatrix_Set_result_2(XMultiplymatrix *InstancePtr, u64 Data);
u64 XMultiplymatrix_Get_result_2(XMultiplymatrix *InstancePtr);

void XMultiplymatrix_InterruptGlobalEnable(XMultiplymatrix *InstancePtr);
void XMultiplymatrix_InterruptGlobalDisable(XMultiplymatrix *InstancePtr);
void XMultiplymatrix_InterruptEnable(XMultiplymatrix *InstancePtr, u32 Mask);
void XMultiplymatrix_InterruptDisable(XMultiplymatrix *InstancePtr, u32 Mask);
void XMultiplymatrix_InterruptClear(XMultiplymatrix *InstancePtr, u32 Mask);
u32 XMultiplymatrix_InterruptGetEnabled(XMultiplymatrix *InstancePtr);
u32 XMultiplymatrix_InterruptGetStatus(XMultiplymatrix *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
