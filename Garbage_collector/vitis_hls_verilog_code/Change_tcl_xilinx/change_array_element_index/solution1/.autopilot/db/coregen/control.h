// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of arr_0
//        bit 31~0 - arr_0[31:0] (Read/Write)
// 0x14 : Data signal of arr_0
//        bit 31~0 - arr_0[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of arr_1
//        bit 31~0 - arr_1[31:0] (Read/Write)
// 0x20 : Data signal of arr_1
//        bit 31~0 - arr_1[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of arr_2
//        bit 31~0 - arr_2[31:0] (Read/Write)
// 0x2c : Data signal of arr_2
//        bit 31~0 - arr_2[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of arr_3
//        bit 31~0 - arr_3[31:0] (Read/Write)
// 0x38 : Data signal of arr_3
//        bit 31~0 - arr_3[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of arr_4
//        bit 31~0 - arr_4[31:0] (Read/Write)
// 0x44 : Data signal of arr_4
//        bit 31~0 - arr_4[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of arr_5
//        bit 31~0 - arr_5[31:0] (Read/Write)
// 0x50 : Data signal of arr_5
//        bit 31~0 - arr_5[63:32] (Read/Write)
// 0x54 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_ARR_0_DATA 0x10
#define CONTROL_BITS_ARR_0_DATA 64
#define CONTROL_ADDR_ARR_1_DATA 0x1c
#define CONTROL_BITS_ARR_1_DATA 64
#define CONTROL_ADDR_ARR_2_DATA 0x28
#define CONTROL_BITS_ARR_2_DATA 64
#define CONTROL_ADDR_ARR_3_DATA 0x34
#define CONTROL_BITS_ARR_3_DATA 64
#define CONTROL_ADDR_ARR_4_DATA 0x40
#define CONTROL_BITS_ARR_4_DATA 64
#define CONTROL_ADDR_ARR_5_DATA 0x4c
#define CONTROL_BITS_ARR_5_DATA 64
