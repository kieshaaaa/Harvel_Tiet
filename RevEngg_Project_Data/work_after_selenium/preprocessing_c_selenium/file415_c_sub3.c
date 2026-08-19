#include <stdio.h>

int entry_point(int (*decimal), int (*temptemp1)) {
int octal = 0;
int placeValue = 1;
;
 do {
int lastDigit = (*decimal) % 8;
 octal += lastDigit * placeValue;
 placeValue *= 10;
 (*decimal) /= 8;
 } while ((*decimal) > 0);
;
{
(*temptemp1) = octal ;
;
}
 return 0;
}
