#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
;
{
(*temptemp1) = (*num) ;
;
}
int i = 2;
 while ((*num) % i == 0) {
{
(*temptemp2) = i ;
;
}
 (*num) = (*num) / i;
 }
 }
 return 0;
}
