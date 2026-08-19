#include <stdio.h>

int entry_point(float (*millimeters), float (*temptemp1), float (*temptemp2)) {
;
{
(*temptemp1) = (*millimeters) ;
;
}
float centimeters = (*millimeters) / 10.0;
;
{
(*temptemp2) = centimeters ;
;
}
 return 0;
}
