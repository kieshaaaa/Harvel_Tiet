#include <stdio.h>

int entry_point(float side1, float side2, float side3, int *temptemp1, int *temptemp2) {
    float sum1 = side1 + side2;
    float sum2 = side2 + side3;
    float sum3 = side1 + side3;
    int cond1 = (sum1 > side3) && (side1 > 0) && (side2 > 0) && (side3 > 0);
    int cond2 = (sum2 > side1) && (side1 > 0) && (side2 > 0) && (side3 > 0);
    int cond3 = (sum3 > side2) && (side1 > 0) && (side2 > 0) && (side3 > 0);
    if (cond1 && cond2 && cond3) {
        *temptemp1 = 1;
        *temptemp2 = 0;
    } else {
        *temptemp1 = 0;
        *temptemp2 = 1;
    }
    return 0;
}