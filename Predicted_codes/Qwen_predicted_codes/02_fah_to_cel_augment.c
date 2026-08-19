#include <stdio.h>

int entry_point(float fahrenheit, float *temptemp1, float *temptemp2) {
    float temp1;
    float temp2;
    float temp3;
    *temptemp1 = fahrenheit;
    temp1 = fahrenheit - 32.0f;
    temp2 = temp1 * (5.0f / 9.0f);
    temp3 = temp2 / 1.0f;
    *temptemp2 = temp3;
    return 0;
}