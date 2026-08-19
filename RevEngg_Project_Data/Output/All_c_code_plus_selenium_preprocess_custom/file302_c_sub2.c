#include <stdio.h>

int entry_point(float (*degrees), float (*temptemp1)) {
float conversionFactor = 200.0 / 180.0;
float gradians;
;
 gradians = (*degrees) * conversionFactor;
{
(*temptemp1) = gradians ;
;
}
 return 0;
}
