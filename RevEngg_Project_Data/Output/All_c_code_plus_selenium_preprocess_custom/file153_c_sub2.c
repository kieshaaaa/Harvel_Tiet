#include <stdio.h>

int entry_point(float (*fah), float (*temptemp1), float (*temptemp2)) {
float conversionFactor;
float cel;
;
 conversionFactor = 5.0 / 9.0;
 cel = ((*fah) - 32) * conversionFactor;
{
(*temptemp1) = (*fah) ;
(*temptemp2) = cel ;
;
}
 return 0;
}
