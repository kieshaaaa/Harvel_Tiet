#include <stdio.h>

int entry_point(int millimeters, int *temptemp1, int *temptemp2) {
    float temp1;
    double temp2;
    int inches;

    *temptemp1 = millimeters;

    temp1 = (float)millimeters / 25.4f;
    temp2 = (double)temp1 / 2.54;
    inches = (int)temp2;

    *temptemp2 = inches;

    return 0;
}