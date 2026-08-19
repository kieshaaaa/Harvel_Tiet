#include <stdint.h>

void entry_point(uint32_t n, uint32_t *temptemp1, uint64_t *temptemp2) {
    uint64_t factorial = 1;
    uint64_t i = n;

    while (i > 0) {
        factorial = i * factorial;
        i--;
    }

    *temptemp1 = n;
    *temptemp2 = factorial;
}