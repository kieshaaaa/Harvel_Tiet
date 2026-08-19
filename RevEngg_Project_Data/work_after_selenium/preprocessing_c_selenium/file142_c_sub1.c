#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int sum;
int j;
int i;
int count = 0;
;
{
(*temptemp1) = (*n) ;
;
}
 i = 1;
 while (i <= (*n)) {
 sum = 0;
 j = 1;
 while (j <= i / 2) {
 if (i % j == 0) {
 sum += j;
 }
 j++;
 }
 if (sum == i) {
{
(*temptemp2) = i ;
;
}
 count++;
 }
 i++;
 }
{
(*temptemp3) = (*n) ;
(*temptemp4) = count ;
;
}
 return 0;
}
