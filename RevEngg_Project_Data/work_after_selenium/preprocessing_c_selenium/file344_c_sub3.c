#include <stdio.h>

int entry_point(int (*lower), int (*upper), int (*temptemp1), float (*temptemp2)) {
;
;
int j = (*lower);
float fact = 1.0;
int overflow = 0;
int i = 2;
 fact *= i;
 if (fact < 0) {
 overflow = 1;
 break;
 }
 }
 if (!overflow && fact <= (*upper) && fact > 0) {
{
(*temptemp1) = j ;
(*temptemp2) = fact ;
;
}
 } else {
 break;
 }
 }
 return 0;
}
