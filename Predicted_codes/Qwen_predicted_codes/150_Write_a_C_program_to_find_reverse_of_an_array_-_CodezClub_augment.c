#include <stdio.h>

int entry_point(int arraySize, int data, int *temptemp1, int *temptemp2) {
    static int reversed[100];
    int i;

    *temptemp1 = arraySize;

    if (arraySize > 0) {
        for (i = 0; i < arraySize && i < 100; i++) {
            reversed[i] = data;
        }
        *temptemp2 = reversed[arraySize - 1];
    } else {
        *temptemp2 = reversed[0];
    }

    return 0;
}