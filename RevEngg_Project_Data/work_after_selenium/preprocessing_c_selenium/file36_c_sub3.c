#include <stdio.h>

int entry_point(float (*powerWatts), float (*temptemp1)) {
float powerHorsepower;
float conversionFactor = 746.0f;
;
 powerHorsepower = (*powerWatts) / conversionFactor;
{
(*temptemp1) = powerHorsepower ;
;
}
 return 0;
}
