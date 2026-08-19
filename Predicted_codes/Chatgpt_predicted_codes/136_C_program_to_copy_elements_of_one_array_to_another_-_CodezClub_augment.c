#include <stdio.h>

int entry_point(int arraySize, int arr1, int *temptemp1, int *temptemp2, int *temptemp3, int *temptemp4) {
    int arr2[100];
    int j;

    *temptemp1 = arraySize;
    if (arraySize > 0) {
        *temptemp2 = arraySize;
        *temptemp3 = arr1;
        for (j = 0; j < arraySize && j < 100; j++) {
            arr2[j] = arr1;
        }
        *temptemp4 = arr2[arraySize - 1];
    } else {
        *temptemp2 = arraySize;
        *temptemp3 = arr1;
        *temptemp4 = 0;
    }
    return 0;
}