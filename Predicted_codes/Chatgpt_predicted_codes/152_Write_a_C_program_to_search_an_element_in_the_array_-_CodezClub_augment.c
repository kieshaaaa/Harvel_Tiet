#include <stdio.h>

int entry_point(int arraySize, int data, int searchValue, int *temptemp1, int *temptemp2, int *temptemp3, int *temptemp4) {
    int index;
    int add_ln29_loc;
    int targetBlock;
    int ap_return_val;
    *temptemp1 = arraySize;
    *temptemp2 = searchValue;
    *temptemp3 = 0;
    *temptemp4 = searchValue;

    if (arraySize > 0) {
        ap_return_val = 0;
        for (index = 0; index < arraySize; index++) {
            add_ln29_loc = index + 1;
            if (data == searchValue) {
                targetBlock = 1;
                break;
            } else {
                targetBlock = 0;
            }
        }
        if (targetBlock == 0) {
            *temptemp3 = add_ln29_loc;
        }
    } else {
        ap_return_val = 1;
    }
    return ap_return_val;
}