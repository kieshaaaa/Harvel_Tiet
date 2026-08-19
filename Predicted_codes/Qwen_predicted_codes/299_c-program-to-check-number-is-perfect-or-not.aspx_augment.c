#include <stdio.h>

int entry_point(unsigned int number, unsigned int *temptemp1, unsigned int *temptemp2) {
    unsigned int sum_of_divisors = 0;
    for (unsigned int i = 1; i < number; i++) {
        if (number % i == 0) {
            sum_of_divisors += i;
        }
    }
    if (sum_of_divisors == number) {
        *temptemp1 = number;
        *temptemp2 = 0;
    } else {
        *temptemp1 = 0;
        *temptemp2 = number;
    }
    return 0;
}