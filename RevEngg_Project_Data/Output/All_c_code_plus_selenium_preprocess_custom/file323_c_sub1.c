#include <stdio.h>
#include <math.h>

int entry_point(float (*radius), float (*temptemp1)) {
;
float surfaceArea = 4 * M_PI * (*radius) * (*radius);
;
{
(*temptemp1) = surfaceArea ;
;
}
 return 0;
}
