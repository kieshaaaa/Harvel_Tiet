#include <stdio.h>
#include <stdint.h>

int entry_point(int n, int *temptemp1, int *temptemp2, int *temptemp3) {
    if (n <= 0) {
        *temptemp1 = 0;
        *temptemp2 = 0;
        *temptemp3 = 0;
        return 0;
    }
    
    uint32_t t1 = 0;
    uint32_t t1_1 = 1;
    uint32_t i = 1;

    for (i = 1; i <= n; i++) {
        uint32_t next = t1 + t1_1;
        t1 = t1_1;
        t1_1 = next;
    }

    *temptemp1 = t1;
    *temptemp2 = t1_1;
    *temptemp3 = t1_1;
    
    return 0;
}
