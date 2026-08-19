#include <stdint.h>

void entry_point(uint8_t str, uint8_t* temptemp1, uint32_t* temptemp2, uint32_t* ap_return) {
    uint8_t maxIndex_loc = 0;
    uint32_t freq_q0 = 0;

    maxIndex_loc = str;
    *temptemp1 = maxIndex_loc;
    *temptemp2 = freq_q0;
    *ap_return = 0;
}