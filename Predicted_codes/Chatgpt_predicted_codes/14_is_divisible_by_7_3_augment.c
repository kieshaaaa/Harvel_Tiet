#include <stdio.h>

int entry_point(int number, int *temptemp1, int *temptemp2, int *temptemp3, int *temptemp4) {
    int divisible_by_2;
    int divisible_by_3;
    int divisible_by_6;

    divisible_by_2 = (number % 2 == 0);
    divisible_by_3 = (number % 3 == 0);
    divisible_by_6 = (number % 6 == 0);

    if (divisible_by_2 || divisible_by_3) {
        *temptemp1 = 1;
    } else {
        *temptemp2 = 1;
    }

    if (divisible_by_6) {
        *temptemp3 = 1;
    } else {
        *temptemp4 = 1;
    }

    return 0;
}