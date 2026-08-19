#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int count = 0;
;
int i = 2;
int isComposite = 0;
int j = 2;
 while (j*j <= i && !isComposite) {
 if (i % j == 0) {
 isComposite = 1;
 }
 j++;
 }
 if (isComposite) count++;
 }
;
{
(*temptemp1) = (*n) ;
;
}
;
{
(*temptemp2) = count ;
;
}
 return 0;
}
