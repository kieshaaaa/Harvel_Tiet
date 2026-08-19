#include <math.h>
#include <stdio.h>

int entry_point(int (*limit), int (*temptemp1), int (*temptemp2)) {
int count;
float limitFloat;
;
 limitFloat = (float)(*limit);
 count = (int)ceil(sqrtf(limitFloat)) - 1;
{
(*temptemp1) = (*limit) ;
;
}
{
(*temptemp2) = count ;
;
}
 return 0;
}
