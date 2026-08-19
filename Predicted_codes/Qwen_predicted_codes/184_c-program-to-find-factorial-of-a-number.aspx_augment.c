#include <stdio.h>

int entry_point(unsigned int n, unsigned int *temptemp1, unsigned long long *temptemp2) {
    unsigned long long factorial = 1;
    unsigned long long i = n;
    while (i > 0) {
        factorial *= i;
        i--;
    }
    *temptemp1 = n;
    *temptemp2 = factorial;
    return 0;
}