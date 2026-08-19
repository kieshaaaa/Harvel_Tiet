#include <stdio.h>

int entry_point(int (*limit), int (*temptemp1), int (*temptemp2)) {
int count = 0;
int i = 1;
;
 while (i*i*i <= (*limit)) {
 count++;
 i++;
 }
;
{
(*temptemp1) = (*limit) ;
(*temptemp2) = count ;
;
}
 return 0;
}
