#include<stdio.h>

int entry_point(int (*temptemp1)) {
int j;
int i;
int count;
 for (i = 1; i <= 8; i++) {
;
 count = i % 2 == 0 ? 1 : 0;
 for (j = 1; j <= i; j++) {
{
(*temptemp1) = count ;
;
}
 count = 1 - count;
 }
 }
 return 0;
}
