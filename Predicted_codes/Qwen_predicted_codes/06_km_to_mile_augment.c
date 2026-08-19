#include <stdio.h>

int entry_point(float kilometers, float *temptemp1, float *temptemp2) {
    double temp1;
    double temp2;
    float miles;
    *temptemp1 = kilometers;
    temp1 = (double)kilometers;
    temp2 = temp1 / 1.609344;
    miles = (float)temp2;
    *temptemp2 = miles;
    return 0;
}