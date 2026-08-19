#include <stdio.h>

int entry_point(float (*degrees), float (*temptemp1)) {
float conversionFactor;
float radians;
 conversionFactor = 3.14f / 180.0f;
;
 radians = (*degrees) * conversionFactor;
;
{
(*temptemp1) = radians ;
;
}
 return 0;
}
