#include<stdio.h>

void multiply(int x, int y) {
 x *= 2;
 y *= 3;
;
}
int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int b = 5;
int a = 4;
{
(*temptemp1) = a ;
(*temptemp2) = b ;
;
}
 multiply(a, b);
{
(*temptemp3) = a ;
(*temptemp4) = b ;
;
}
 return 0;
}
