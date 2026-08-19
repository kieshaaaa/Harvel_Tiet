#include <stdio.h>

int entry_point(float (*radians), float (*temptemp1), float (*temptemp2)) {
float degrees;
;
 degrees = (*radians) * (180.0 / 3.14);
{
(*temptemp1) = (*radians) ;
(*temptemp2) = degrees ;
;
}
 return 0;
}
