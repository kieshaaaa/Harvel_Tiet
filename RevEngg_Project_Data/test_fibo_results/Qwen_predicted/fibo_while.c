#include <stdio.h>

int entry_point(int n, int *temptemp1, int *temptemp2, int *temptemp3) {
    int i;
    int t1, t1_1;
    if (n <= 0) {
        *temptemp1 = 0;
        *temptemp2 = 1;
        *temptemp3 = 1;
        return 0;
    }
    t1 = 0;
    t1_1 = 1;
    for (i = 1; i <= n; i++) {
        int next = t1 + t1_1;
        t1 = t1_1;
        t1_1 = next;
    }
    *temptemp1 = t1;
    *temptemp2 = t1_1;
    *temptemp3 = t1_1;
    return 0;
}
