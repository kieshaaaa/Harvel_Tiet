#include <math.h>
#include <stdio.h>

int entry_point(float (*side), float (*temptemp1)) {
float phi;
float area;
;
 phi = (1 + sqrt(5)) / 2;
 area = (sqrt(3) / 4) * (5 * (*side) * (*side)) / phi;
{
(*temptemp1) = area ;
;
}
 return 0;
}
