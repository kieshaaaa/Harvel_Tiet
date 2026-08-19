#include<stdio.h>

int entry_point(int (*temptemp1)) {
int j;
int i;
int count = 1;
 for (i = 1; i <= 8; i++) {
;
 for (j = 1; j <= i; j++, count = !count) {
{
(*temptemp1) = count ;
;
}
 }
 count = i % 2 ? 0 : 1;
 }
 return 0;
}
