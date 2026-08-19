#include <stdio.h>

int entry_point(float (*pressureInPascals), float (*temptemp1)) {
float pressureInMmHg;
;
 pressureInMmHg = (*pressureInPascals) * 0.0075;
{
(*temptemp1) = pressureInMmHg ;
;
}
 return 0;
}
