#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
;
int isOdd = (*num) % 2;
 if(isOdd)
{
(*temptemp1) = (*num) ;
;
}
 else
{
(*temptemp2) = (*num) ;
;
}
 return 0;
}
