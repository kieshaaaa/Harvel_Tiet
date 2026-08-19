#include <stdio.h>

int entry_point(float (*velocityKmH), float (*temptemp1)) {
float conversionFactor = 0.621371;
float velocityMpH;
;
 velocityMpH = (*velocityKmH) * conversionFactor;
{
(*temptemp1) = velocityMpH ;
;
}
 return 0;
}
