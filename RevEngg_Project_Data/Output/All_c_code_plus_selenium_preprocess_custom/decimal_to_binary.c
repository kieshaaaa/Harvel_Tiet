#include <stdio.h>

int entry_point(int (*decimal), int (*temptemp1)) {
int binary[32];
int remainder;
int i = 0;
int j;
;
 while((*decimal) > 0) {
 binary[i] = (*decimal) % 2;
 (*decimal) /= 2;
 i++;
 }
;
 for(j = i - 1; j >= 0; j--)
{
(*temptemp1) = binary[j] ;
;
}
;
 return 0;
}
