#include <math.h>
#include <stdio.h>

int entry_point(float (*inputValue), float (*temptemp1), float (*temptemp2)) {
;
float resultFloor = floor((*inputValue));
float resultCeil = ceil((*inputValue));
;
{
(*temptemp1) = resultFloor ;
;
}
;
{
(*temptemp2) = resultCeil ;
;
}
;
 return 0;
}
