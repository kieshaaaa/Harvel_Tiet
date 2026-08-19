#include <stdio.h>

int entry_point(float (*pascals), float (*temptemp1)) {
float conversionFactor;
float mmHg;
 conversionFactor = 0.0075;
;
 mmHg = (*pascals) * conversionFactor;
{
(*temptemp1) = mmHg ;
;
}
 return 0;
}
