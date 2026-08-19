#include <stdio.h>

int entry_point(int n, int *temptemp1, int *temptemp2, int *temptemp3) {
    int t1 = 0;
    int t1_1 = 1;
    int i;
    if (n > 0) {
        for (i = 1; i <= n; i++) {
            int next = t1 + t1_1;
            t1 = t1_1;
            t1_1 = next;
        }
    }
    *temptemp1 = t1;
    *temptemp2 = t1_1;
    *temptemp3 = t1_1;
    return 0;
}
