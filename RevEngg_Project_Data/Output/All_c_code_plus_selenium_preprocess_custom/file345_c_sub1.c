#include <stdio.h>

int entry_point(float (*mm), float (*temptemp1)) {
float conversionFactor = 25.4;
float inches;
;
 inches = (*mm) / conversionFactor;
;
{
(*temptemp1) = inches ;
;
}
 return 0;
}
