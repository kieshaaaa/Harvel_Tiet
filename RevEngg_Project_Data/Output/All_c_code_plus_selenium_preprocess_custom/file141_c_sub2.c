#include <stdio.h>

int entry_point(float (*radius), float (*temptemp1)) {
float area;
float radius_squared;
;
 radius_squared = (*radius) * (*radius);
 area = 3.14159 * radius_squared;
;
{
(*temptemp1) = area ;
;
}
 return 0;
}
