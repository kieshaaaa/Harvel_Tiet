#include <stdio.h>

int entry_point(int numElements, int values, int *temptemp1, int *temptemp2, int *temptemp3, int *temptemp4) {
    *temptemp1 = numElements;
    *temptemp2 = numElements;
    *temptemp3 = values;
    if (numElements > 0) {
        *temptemp4 = values * numElements;
    } else {
        *temptemp4 = 0;
    }
    return 0;
}