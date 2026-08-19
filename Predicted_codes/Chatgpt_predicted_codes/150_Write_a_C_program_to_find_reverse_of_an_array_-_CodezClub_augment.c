#include <stdint.h>

void entry_point(uint32_t arraySize, uint32_t data, uint32_t *temptemp1, uint32_t *temptemp2) {
    uint32_t reversed[100] = {0};
    uint32_t index;
    uint32_t select_val;
    uint32_t reverseIndex = 0;
    uint8_t tmp;

    *temptemp1 = arraySize;

    if (arraySize > 0) {
        index = arraySize - 1;
        tmp = (index >> 31) & 1;
    } else {
        index = 0;
        tmp = 0;
    }

    if (arraySize != 0) {
        select_val = arraySize;
    } else {
        select_val = 1;
    }

    if (tmp == 0) {
        for (uint32_t i = 0; i < select_val; i++) {
            reversed[i] = data;
        }
        *temptemp2 = reversed[0];
    } else {
        *temptemp2 = 0;
    }
}