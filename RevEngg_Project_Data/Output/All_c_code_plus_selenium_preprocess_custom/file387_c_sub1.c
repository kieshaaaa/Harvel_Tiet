#include <stdio.h>

void getBinaryV1(int n) {
 int bit;
 for (int i = 15; i >= 0; --i) {
 bit = (n >> i) & 1;
 if (bit == 1)
;
 else
;
 }
}
int entry_point(int (*num), int (*temptemp1)) {
;
{
(*temptemp1) = (*num) ;
;
}
 getBinaryV1((*num));
 return 0;
}
