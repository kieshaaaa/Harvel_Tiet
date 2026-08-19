#include <stdio.h>

int entry_point(unsigned int number, unsigned int *temptemp1, unsigned int *temptemp2) {
    unsigned int tempNumber = number;
    unsigned int digitCount = 0;
    while (tempNumber > 0) {
        digitCount++;
        tempNumber = tempNumber / 10;
    }
    *temptemp1 = digitCount;
    *temptemp2 = number;
    return 0;
}