#include <stdio.h>

int entry_point(int (*num1), int (*num2), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int hcf = 1;
int min;
;
;
 min = ((*num1) < (*num2)) ? (*num1) : (*num2);
int i = 2;
 if ((*num1) % i == 0 && (*num2) % i == 0) {
 hcf = i;
 }
 }
{
(*temptemp1) = (*num1) ;
(*temptemp2) = (*num2) ;
(*temptemp3) = hcf ;
;
}
 return 0;
}
