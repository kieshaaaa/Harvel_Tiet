#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2)) {
int a = 100;
{
(*temptemp1) = a ;
;
}
 a = 200;
{
(*temptemp2) = a ;
;
}
 return 0;
}
