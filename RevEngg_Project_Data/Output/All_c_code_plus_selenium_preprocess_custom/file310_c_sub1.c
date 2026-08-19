#include <stdio.h>

int entry_point(float (*atm), float (*temptemp1)) {
float conversionFactor;
float mmHg;
 conversionFactor = 760.0;
;
 mmHg = (*atm) * conversionFactor;
{
(*temptemp1) = mmHg ;
;
}
 return 0;
}
