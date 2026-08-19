#include <stdio.h>

int entry_point(int (*number), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int tempNumber;
int totalProduct = 1;
int totalSum = 0;
int digit;
;
 tempNumber = (*number);
 while(tempNumber != 0) {
 digit = tempNumber % 10;
 totalSum = totalSum + digit;
 totalProduct = totalProduct * digit;
 tempNumber = tempNumber / 10;
 }
{
(*temptemp1) = (*number) ;
(*temptemp2) = totalSum ;
;
}
{
(*temptemp3) = (*number) ;
(*temptemp4) = totalProduct ;
;
}
 return 0;
}
