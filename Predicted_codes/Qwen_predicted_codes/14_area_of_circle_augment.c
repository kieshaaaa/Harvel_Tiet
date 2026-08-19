#include <stdio.h>

int entry_point(int rad, int *temptemp1, int *temptemp2) {
    double pi = 3.14159265358979323846;
    double r = (double)rad;
    double area = pi * r * r;
    *temptemp1 = (int)area;
    *temptemp2 = rad;
    return 0;
}