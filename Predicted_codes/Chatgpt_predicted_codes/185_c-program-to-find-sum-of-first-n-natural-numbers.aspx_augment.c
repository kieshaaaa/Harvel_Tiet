#include <stdint.h>

uint32_t entry_point(uint32_t n, uint8_t *temptemp1) {
    uint32_t result = 0;

    if (n > 0) {
        uint32_t temp = n + 1;
        uint32_t select_val = (temp > 2) ? (temp & 0x7FFFFFFF) : 2;
        uint32_t shl_val = select_val << 1;
        uint32_t add_val1 = select_val + 2147483646;
        uint32_t add_val2 = select_val + 4294967293U;
        uint32_t mul_val = add_val1 * add_val2;
        uint32_t trunc_val = mul_val >> 1;
        result = trunc_val + shl_val;
    }

    *temptemp1 = result;
    return 0;
}