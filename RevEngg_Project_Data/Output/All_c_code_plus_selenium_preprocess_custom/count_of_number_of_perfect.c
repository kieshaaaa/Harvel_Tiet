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
 for(i = 1; i <= (*n); i++) {
 sum = 0;
 for(j = 1; j <= i/2; j++) {
 if(i % j == 0) {
 sum += j;
 }
 }
 if(sum == i) {
{
(*temptemp2) = i ;
;
}
 count++;
 }
 }
{
(*temptemp3) = (*n) ;
(*temptemp4) = count ;
;
}
 return 0;
}
