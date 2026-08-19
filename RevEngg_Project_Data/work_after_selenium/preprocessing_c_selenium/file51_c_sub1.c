#include <stdio.h>
#include <math.h>

int entry_point(float (*a), float (*h), float (*temptemp1)) {
float A_total;
float A_side;
float A_base;
;
;
 A_base = (*a) * (*a);
 A_side = 2 * (*a) * (*h);
 A_total = A_base + A_side;
{
(*temptemp1) = A_total ;
;
}
 return 0;
}
