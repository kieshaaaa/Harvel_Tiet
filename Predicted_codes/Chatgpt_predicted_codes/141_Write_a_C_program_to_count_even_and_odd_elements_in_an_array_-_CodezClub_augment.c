#include <stdio.h>

int entry_point(int numElements, int *array_r, int *temptemp1, int *temptemp2, int *temptemp3, int *temptemp4) {
    int evenCount;
    int oddCount;
    int index;

    evenCount = 0;
    oddCount = 0;
    index = 0;

    if (numElements > 0) {
        for (index = 0; index < numElements; index++) {
            if (array_r[index] % 2 == 0) {
                evenCount++;
            } else {
                oddCount++;
            }
        }
    } else {
        evenCount = 0;
        oddCount = 0;
    }

    *temptemp1 = numElements;
    *temptemp2 = numElements;
    *temptemp3 = evenCount;
    *temptemp4 = oddCount;

    return 0;
}