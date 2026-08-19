#include <stdio.h>
#include <math.h>

int entry_point(int p, int r, int t, int *temptemp1) {
    double base = *(double*)&p;
    double exp_val = *(double*)&t;
    double result = pow(base, exp_val);
    *temptemp1 = *(int*)&result;
    return 0;
}