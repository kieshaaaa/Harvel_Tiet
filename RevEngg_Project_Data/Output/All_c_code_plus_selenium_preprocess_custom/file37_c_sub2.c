#include <stdio.h>

int entry_point(float (*powerHP), float (*temptemp1)) {
float powerW;
float conversionFactor;
;
 conversionFactor = 746.0f;
 powerW = (*powerHP) * conversionFactor;
;
{
(*temptemp1) = powerW ;
;
}
;
 return 0;
}
