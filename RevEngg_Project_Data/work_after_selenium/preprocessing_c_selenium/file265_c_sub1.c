#include<stdio.h>

void add(int x, int y) {
 x += 5;
 y += 10;
;
}
int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int b = 2;
int a = 3;
{
(*temptemp1) = a ;
(*temptemp2) = b ;
;
}
 add(a, b);
{
(*temptemp3) = a ;
(*temptemp4) = b ;
;
}
 return 0;
}
