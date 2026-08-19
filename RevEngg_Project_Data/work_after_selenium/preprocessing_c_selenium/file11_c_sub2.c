#include <stdio.h>

int entry_point(int (*number1), int (*number2), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int count = 0;
;
 if((*number1) <= 2) {
;
 (*number1) = 3;
 count++;
 }
 if((*number1) % 2 == 0) (*number1)++;
int i = (*number1);
int flag = 0;
int j = 3;
 if(i % j == 0) {
 flag = 1;
 break;
 }
 }
 if(!flag) {
{
(*temptemp1) = i ;
;
}
 count++;
 }
 }
{
(*temptemp2) = (*number1) ;
(*temptemp3) = (*number2) ;
(*temptemp4) = count ;
;
}
 return 0;
}
