#include<stdio.h>

int entry_point(int (*temptemp1)) {
int j;
int i;
int count = 1;
 for (i = 1; i <= 8; i++) {
;
 for (j = 1; j <= i; j++) {
{
(*temptemp1) = count % 2 ;
;
}
 count++;
 }
 if (i % 2 == 0)
 count = 1;
 else
 count = 0;
 }
 return(0);
 return 0;
}
