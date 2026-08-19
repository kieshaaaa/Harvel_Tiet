#include <math.h>
#include <stdio.h>

int entry_point(int (*num1), int (*num2), int (*temptemp1)) {
;
 (*num1) = fabs((*num1));
 (*num2) = fabs((*num2));
 while((*num1) != (*num2)) {
 if((*num1) > (*num2))
 (*num1) -= (*num2);
 else
 (*num2) -= (*num1);
 }
{
(*temptemp1) = (*num1) ;
;
}
 return 0;
}
