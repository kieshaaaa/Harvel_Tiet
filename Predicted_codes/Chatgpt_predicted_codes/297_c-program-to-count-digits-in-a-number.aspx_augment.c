#include <stdio.h>
#include <stdint.h>

int entry_point(int number, int *temptemp1, int *temptemp2) {
    int tempNumber = number;
    int digitCount = 0;

    while (tempNumber > 0) {
        digitCount++;
        tempNumber = tempNumber / 10;
    }

    *temptemp1 = digitCount;
    *temptemp2 = number;

    return 0;
}