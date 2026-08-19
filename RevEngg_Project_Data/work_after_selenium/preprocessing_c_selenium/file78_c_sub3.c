#include <stdio.h>

int entry_point(int (*start), int (*end), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int primeCount = 0;
int primeFlag;
int j;
int i;
;
{
(*temptemp1) = (*start) ;
(*temptemp2) = (*end) ;
;
}
 for(i = (*start); i <= (*end); i++) {
 if (i <= 1) continue;
 primeFlag = 1;
 for(j = 2; j*j <= i; j++) {
 if(i % j == 0) {
 primeFlag = 0;
 break;
 }
 }
 if(primeFlag == 1) {
{
(*temptemp3) = i ;
;
}
 primeCount++;
 }
 }
{
(*temptemp4) = primeCount ;
;
}
 return 0;
}
