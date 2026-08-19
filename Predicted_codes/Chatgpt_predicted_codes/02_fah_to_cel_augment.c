#include <stdint.h>

int entry_point(
    uint32_t fahrenheit,
    uint32_t *temptemp1,
    uint32_t *temptemp2
) {
       *temptemp1 = fahrenheit;

    double temp = (double)fahrenheit;
    double celsius = (temp - 32.0) * 5.0 / 9.0;

    *temptemp2 = (uint32_t)celsius;

    return 0;
}