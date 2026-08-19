#include <stdio.h>

int entry_point(int numElements, int array_r, int *temptemp1, int *temptemp2, int *temptemp3, int *temptemp4) {
    int evenCount = 0;
    int oddCount = 0;
    int i;

    *temptemp1 = numElements;
    *temptemp2 = numElements;

    if (numElements > 0) {
        for (i = 0; i < numElements; i++) {
            if ((array_r & 1) == 1) {
                oddCount++;
            } else {
                evenCount++;
            }
        }
    }

    *temptemp3 = evenCount;
    *temptemp4 = oddCount;
    return 0;
}