#include <stdio.h>

int entry_point(float fahrenheit, float *temptemp1, float *temptemp2) {
    *temptemp1 = fahrenheit;
    float celsius = (fahrenheit - 32.0f) * 5.0f / 9.0f;
    *temptemp2 = celsius;
    return 0;
}