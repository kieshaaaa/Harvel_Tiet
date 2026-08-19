#include <stdio.h>

int entry_point(int (*number), int (*searchDigit), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int count = 0;
;
;
int temp = (*number);
int currentDigit = temp % 10;
 if (currentDigit == (*searchDigit)) {
 count++;
 }
 }
{
(*temptemp1) = (*searchDigit) ;
(*temptemp2) = (*number) ;
(*temptemp3) = count ;
;
}
 return 0;
}
