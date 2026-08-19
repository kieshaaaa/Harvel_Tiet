#include <stdio.h>

int entry_point(int (*lower), int (*upper), int (*temptemp1), int (*temptemp2)) {
 int fact, (*lower), (*upper), i , j;
;
;
 for(i = (*lower); i <= (*upper); i++) {
 fact = 1;
 for(j = 2; j <= i; j++) {
 fact = fact * j;
 if (fact < 0) {
 fact = -1;
 break;
 }
 }
 if(fact > 0 && fact <= (*upper)) {
{
(*temptemp1) = i ;
(*temptemp2) = fact ;
;
}
 } else {
 break;
 }
 }
 return 0;
}
