#include <stdio.h>

int entry_point(int (*lower), int (*upper), int (*temptemp1), float (*temptemp2)) {
int i;
int j;
float result;
;
;
 for(j = (*lower); j <= (*upper) && j >= 0; j++) {
 i = 2;
 result = 1.0;
 while(i <= j && result <= (*upper)) {
 result *= i;
 if (result < 0) {
 result = -1;
 break;
 }
 i++;
 }
 if(result <= (*upper) && result > 0) {
{
(*temptemp1) = j ;
(*temptemp2) = result ;
;
}
 } else {
 break;
 }
 }
 return 0;
}
