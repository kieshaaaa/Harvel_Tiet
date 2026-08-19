#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), long int (*temptemp2)) {
long int fact = 1;
;
int i = (*num);
 while(i >= 1) {
 fact *= i;
 i--;
 }
{
(*temptemp1) = (*num) ;
(*temptemp2) = fact ;
;
}
 return 0;
}
