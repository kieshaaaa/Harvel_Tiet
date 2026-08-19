#include <math.h>
#include <stdio.h>

int entry_point(float (*value), float (*temptemp1), float (*temptemp2)) {
;
float floorValue = floor((*value));
float ceilValue = ceil((*value));
;
{
(*temptemp1) = floorValue ;
;
}
;
{
(*temptemp2) = ceilValue ;
;
}
;
 return 0;
}
