#include <stdio.h>

int entry_point(int (*decimal), int (*temptemp1)) {
int tempDecimal;
int octal;
int placeValue = 1;
;
 tempDecimal = (*decimal);
 while (tempDecimal > 0) {
 octal = octal + (tempDecimal % 8) * placeValue;
 tempDecimal = tempDecimal / 8;
 placeValue = placeValue * 10;
 }
{
(*temptemp1) = octal ;
;
}
 return 0;
}
