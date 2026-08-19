#include <stdint.h>

uint32_t entry_point(uint32_t rows, uint32_t *temptemp1) {
    uint32_t add_ln10, add_ln10_1, add_ln10_2, add_ln10_3;
    uint32_t select_ln10, trunc_ln10, shl_ln;
    uint8_t icmp_ln10, icmp_ln10_1;

    add_ln10 = rows + 1;
    icmp_ln10 = (rows > 0) ? 1 : 0;
    icmp_ln10_1 = (add_ln10 > 2) ? 1 : 0;
    trunc_ln10 = add_ln10 & 0x7FFFFFFF;
    select_ln10 = icmp_ln10_1 ? trunc_ln10 : 2;
    add_ln10_1 = select_ln10 + 2147483646U;
    add_ln10_2 = select_ln10 + 4294967293U;
    shl_ln = select_ln10 << 1;
    add_ln10_3 = (add_ln10_2 >> 1) + 4294967293U;
    *temptemp1 = add_ln10_3 + shl_ln;

    return 0;
}