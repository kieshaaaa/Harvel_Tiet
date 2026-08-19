#include <stdio.h>

int entry_point(int n, int *temptemp1, int *temptemp2, int *temptemp3) {
    int i;
    int t1;
    int t2;
    t1 = 1;
    t2 = 1;
    for (i = 1; i <= n; i++) {
        t2 = t1 + t2;
        t1 = t2 - t1;
    }
    *temptemp1 = t1;
    *temptemp2 = t2;
    *temptemp3 = t2;
    return 0;
}
