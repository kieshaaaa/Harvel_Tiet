#include <math.h>
#include <stdio.h>

int entry_point(float (*radius), float (*temptemp1)) {
;
float surfaceArea = 4.0f * M_PI * (*radius) * (*radius);
;
{
(*temptemp1) = surfaceArea ;
;
}
 return 0;
}
