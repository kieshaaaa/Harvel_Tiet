#include<stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2)) {
 int original[10] = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
int copied[10];
int j;
;
 for (j = 0; j < 10; j++) {
 copied[j] = original[j];
 }
;
 for (j = 0; j < 10; j++) {
{
(*temptemp1) = j + 1 ;
(*temptemp2) = copied[j] ;
;
}
 }
 return 0;
}
