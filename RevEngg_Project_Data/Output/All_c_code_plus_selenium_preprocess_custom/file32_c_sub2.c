#include <stdio.h>

int entry_point(float (*meters), float (*temptemp1), float (*temptemp2)) {
float conversionFactor = 3.280839895f;
float feet;
;
 feet = (*meters) * conversionFactor;
{
(*temptemp1) = (*meters) ;
(*temptemp2) = feet ;
;
}
 return 0;
}
