#include <stdio.h>

int entry_point(float (*inputWatts), float (*temptemp1)) {
float outputHorsepower;
;
;
 outputHorsepower = (*inputWatts) / 746.0f;
{
(*temptemp1) = outputHorsepower ;
;
}
 return 0;
}
