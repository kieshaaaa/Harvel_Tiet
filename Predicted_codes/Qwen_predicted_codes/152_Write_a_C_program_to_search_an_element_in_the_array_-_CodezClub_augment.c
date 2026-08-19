#include <stdio.h>

int entry_point(int arraySize, int data, int searchValue, int *temptemp1, int *temptemp2, int *temptemp3, int *temptemp4) {
    int index;
    int found;

    *temptemp1 = arraySize;

    if (arraySize <= 0) {
        *temptemp2 = searchValue;
        *temptemp3 = 0;
        *temptemp4 = searchValue;
        return 0;
    }

    found = 0;
    for (index = 0; index < arraySize; index++) {
        if (data == searchValue) {
            found = 1;
            break;
        }
    }

    if (found) {
        *temptemp2 = searchValue;
        *temptemp3 = index + 1;
        *temptemp4 = searchValue;
    } else {
        *temptemp2 = searchValue;
        *temptemp3 = index + 1;
        *temptemp4 = searchValue;
    }

    return 0;
}