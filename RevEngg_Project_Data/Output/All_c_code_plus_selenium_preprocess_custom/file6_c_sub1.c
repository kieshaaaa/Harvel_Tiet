#include <stdio.h>

int entry_point(float (*kilometers), float (*temptemp1), float (*temptemp2)) {
float miles;
float conversionFactor = 1.609344;
;
 miles = (*kilometers) / conversionFactor;
{
(*temptemp1) = (*kilometers) ;
;
}
{
(*temptemp2) = miles ;
;
}
 return 0;
}
