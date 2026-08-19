#include<stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int rows = 8;
int j;
int i;
int c;
int b = 1;
int a = 0;
 for (i = 1; i <= rows; i++) {
;
 for (j = 1; j <= i; j++) {
 if (i == 1) {
{
(*temptemp1) = a ;
;
}
 continue;
 }
 if (i == 2 && j == 1) {
{
(*temptemp2) = b ;
;
}
 continue;
 }
 c = a + b;
 a = b;
 b = c;
{
(*temptemp3) = c ;
;
}
 }
 }
 return 0;
}
