#include <stdint.h>

uint32_t entry_point(uint32_t velocity, uint32_t duration, uint8_t *temptemp1) {
    uint32_t distance = duration * velocity;
    *temptemp1 = distance;
    return 0;
}