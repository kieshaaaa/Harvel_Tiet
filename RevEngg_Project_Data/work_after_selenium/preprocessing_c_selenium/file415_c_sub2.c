#include <stdio.h>

int entry_point(int (*decimal), int (*temptemp1)) {
int octal = 0;
int placeValue = 1;
;
 for (; (*decimal) > 0; (*decimal) /= 8) {
 octal += ((*decimal) % 8) * placeValue;
 placeValue *= 10;
 }
int result = octal;
;
{
(*temptemp1) = result ;
;
}
 return 0;
}
