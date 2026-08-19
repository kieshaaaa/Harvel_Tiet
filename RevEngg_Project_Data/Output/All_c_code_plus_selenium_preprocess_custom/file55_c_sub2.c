#include <math.h>
#include <stdio.h>

int entry_point(int (*dividend), int (*divisor), int (*temptemp1)) {
float divisionResult;
;
;
 divisionResult = (float)(*dividend) / (*divisor);
int floorValue = floor(divisionResult);
int remainder = (*dividend) - (floorValue * (*divisor));
{
(*temptemp1) = remainder ;
;
}
 return 0;
}
