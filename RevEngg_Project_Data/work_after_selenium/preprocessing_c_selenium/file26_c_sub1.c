#include <stdio.h>

int entry_point(int (*limit), int (*temptemp1), int (*temptemp2)) {
int count = 0;
int i = 1;
int cube = 0;
;
 while (cube <= (*limit)) {
 cube = i * i * i;
 if (cube <= (*limit)) {
 count++;
 }
 i++;
 }
;
{
(*temptemp1) = (*limit) ;
;
}
;
{
(*temptemp2) = count ;
;
}
 return 0;
}
