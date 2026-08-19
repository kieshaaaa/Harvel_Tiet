#include <stdio.h>

int entry_point(int arraySize, int arr1, int *temptemp1, int *temptemp2, int *temptemp3, int *temptemp4) {
    static int arr2[100];
    int i;

    *temptemp1 = arraySize;
    *temptemp2 = arraySize;
    *temptemp3 = arr1;

    if (arraySize > 0) {
        for (i = 0; i < arraySize && i < 100; i++) {
            arr2[i] = arr1;
        }
        *temptemp4 = arr2[(arraySize - 1) & 0x7F];
    } else {
        *temptemp4 = arr2[0];
    }

    return 0;
}