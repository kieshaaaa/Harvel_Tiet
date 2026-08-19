#include <stdio.h>
#include <math.h>

int entry_point(float (*sideLength), float (*temptemp1)) {
float halfSqrt3;
float area;
;
 halfSqrt3 = sqrt(3) / 2;
 area = 2 * halfSqrt3 * (*sideLength) * (*sideLength);
;
{
(*temptemp1) = area ;
;
}
 return 0;
}
