#include <stdio.h>

int entry_point(int (*decimal), int (*temptemp1)) {
int bitsCount = 0;
int binary[32];
;
int temp = (*decimal);
 while (temp > 0) {
 bitsCount++;
 temp >>= 1;
 }
 if ((*decimal) == 0) bitsCount = 1;
int i = bitsCount - 1;
 binary[i] = ((*decimal) & 1);
 (*decimal) >>= 1;
 }
;
int i = 0;
{
(*temptemp1) = binary[i] ;
;
}
 }
;
 return 0;
}
