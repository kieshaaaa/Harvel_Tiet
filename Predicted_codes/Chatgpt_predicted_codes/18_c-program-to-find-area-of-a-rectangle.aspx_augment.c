#include <stdint.h>

uint32_t entry_point(uint32_t length_r, uint32_t breadth, uint8_t *temptemp1) {
    uint32_t result = length_r * breadth;
    *temptemp1 = result;
    return 0;
}