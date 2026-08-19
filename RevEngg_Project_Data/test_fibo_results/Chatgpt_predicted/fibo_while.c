#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
    int t1 = 0;
    int t2 = 1;
    int next;
    int i = 1;
    if ((*n) > 0) {
        do {
            next = t1 + t2;
            t1 = t2;
            t2 = next;
            i++;
        } while (i <= (*n));
    }
    (*temptemp1) = t1;
    (*temptemp2) = t2;
    (*temptemp3) = t2;
    return 0;
}
