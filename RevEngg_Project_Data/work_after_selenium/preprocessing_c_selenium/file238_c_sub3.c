#include <stdio.h>

int entry_point(int (*lower), int (*upper), int (*temptemp1), int (*temptemp2)) {
;
;
int i = (*lower);
 if(i < 0) break;
int fact = (i == 0) ? 1 : i;
int j = i - 1;
 fact *= j;
 if (fact <= 0) {
 fact = -1;
 break;
 }
 }
 if (fact > 0) {
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
