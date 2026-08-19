#include <math.h>
#include <stdio.h>

int entry_point(float (*a), float (*b), float (*c), float (*temptemp1)) {
float surfaceArea;
float meanPow;
float bcPow;
float acPow;
float abPow;
float p = 3.14159265358979323846;
;
;
;
 abPow = pow((*a) * (*b), 1.6f);
 acPow = pow((*a) * (*c), 1.6f);
 bcPow = pow((*b) * (*c), 1.6f);
 meanPow = (abPow + acPow + bcPow) / 3;
 surfaceArea = 4 * p * pow(meanPow, 1 / 1.6f);
{
(*temptemp1) = surfaceArea ;
;
}
 return 0;
}
