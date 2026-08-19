#include <stdio.h>

int entry_point(int (*limit), int (*temptemp1)) {
int i = 0;
int next;
int second = 1;
int first = 0;
;
;
 while (i < (*limit)) {
 if (i <= 1) next = i;
 else {
 next = first + second;
 first = second;
 second = next;
 }
{
(*temptemp1) = next ;
;
}
 i++;
 }
;
 return 0;
}
