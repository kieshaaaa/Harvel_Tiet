#include <stdio.h>

void entry_point(unsigned int kilometers, unsigned int *temptemp1, unsigned int *temptemp2) {
    double conv = (double)kilometers;
    double div_result = conv / 4609926660211357856.0;
    unsigned int miles = (unsigned int)div_result;
    *temptemp1 = kilometers;
    *temptemp2 = miles;
}