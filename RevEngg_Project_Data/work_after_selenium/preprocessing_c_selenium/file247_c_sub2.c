#include <math.h>
#include <stdio.h>

int entry_point(int (*num1), int (*num2), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int gcd = 1;
int min;
;
 (*num1) = fabs((*num1));
 (*num2) = fabs((*num2));
 min = (*num1) < (*num2) ? (*num1) : (*num2);
int i = 2;
 if ((*num1) % i == 0 && (*num2) % i == 0) {
 gcd = i;
 break;
 }
 }
 if (gcd == 1)
{
(*temptemp1) = (*num1) ;
(*temptemp2) = (*num2) ;
;
}
 else
{
(*temptemp3) = (*num1) ;
(*temptemp4) = (*num2) ;
;
}
 return 0;
}
