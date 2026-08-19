#include <stdio.h>

int entry_point(float (*inches), float (*temptemp1)) {
float conversionFactor;
float feet;
;
 conversionFactor = 1.0 / 12.0;
 feet = (*inches) * conversionFactor;
;
{
(*temptemp1) = feet ;
;
}
 return 0;
}
