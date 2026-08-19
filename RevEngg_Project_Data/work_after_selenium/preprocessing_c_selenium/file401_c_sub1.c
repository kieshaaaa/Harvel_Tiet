#include <stdio.h>

int entry_point(float (*meters), float (*temptemp1)) {
float conversionFactor;
float kilometers;
 conversionFactor = 1000.0;
;
 kilometers = (*meters) / conversionFactor;
;
{
(*temptemp1) = kilometers ;
;
}
;
 return 0;
}
