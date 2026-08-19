#include <stdio.h>
#include <math.h>

int entry_point(float (*side), float (*temptemp1)) {
float root2 = sqrt(2);
float multiplier = 2 * (1 + root2);
float area;
;
 area = multiplier * (*side) * (*side);
;
{
(*temptemp1) = area ;
;
}
 return 0;
}
