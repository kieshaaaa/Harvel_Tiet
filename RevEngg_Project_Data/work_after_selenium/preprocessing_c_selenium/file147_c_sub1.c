#include<stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int next;
int second = 1;
int first = 0;
;
{
(*temptemp1) = (*n) ;
;
}
int i = 0;
 if (i <= 1) {
 next = i;
 } else {
 next = first + second;
 first = second;
 second = next;
 }
{
(*temptemp2) = next ;
;
}
 }
;
 return 0;
}
