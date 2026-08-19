#include <stdint.h>

int entry_point(int salary, int *temptemp1, int *temptemp2, int *temptemp3) {
    float div_result = (float)salary / 1120403456.0f;
    float mul1 = div_result * 1095237632.0f;
    float mul2 = div_result * 1094713344.0f;

    *temptemp1 = salary;
    *temptemp2 = (int)mul1;
    *temptemp3 = (int)mul2;

    return 0;
}