#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int temp;
int b = 20;
int a = 10;
{
(*temptemp1) = a ;
(*temptemp2) = b ;
;
}
 temp = a;
 a = b;
 b = temp;
{
(*temptemp3) = a ;
(*temptemp4) = b ;
;
}
 return 0;
}
