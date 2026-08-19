#include <math.h>
#include <stdio.h>

int entry_point(float (*a), float (*b), float (*c), float (*temptemp1)) {
float p = 3.14159265358979323846;
float surfaceArea;
;
 surfaceArea = 4 * p * pow((pow((*a) * (*b), 1.6f) + pow((*a) * (*c), 1.6f) + pow((*b) * (*c), 1.6f)) / 3, 1 / 1.6f);
{
(*temptemp1) = surfaceArea ;
;
}
 return 0;
}
