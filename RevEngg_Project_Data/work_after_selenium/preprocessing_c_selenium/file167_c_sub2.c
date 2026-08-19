#include <stdio.h>

int entry_point(float (*a), float (*b), float (*c), float (*d), float (*e), float (*temptemp1)) {
float result;
float sum2;
float sum1;
;
 sum1 = (*a) + (*b) + (*c);
 sum2 = (*d) + (*e);
 result = sum1 - sum2;
{
(*temptemp1) = result ;
;
}
 return 0;
}
