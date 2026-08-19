#include <stdio.h>

int entry_point(unsigned int (*temptemp1)) {
unsigned int num = 0x4;
char totalBits = sizeof(num) * 8;
unsigned int temp;
unsigned int mask2 = (1 << (totalBits - 1));
unsigned int mask1 = 1;
int i = 0;
 if ((num & mask1) != (num & mask2)) {
 num ^= mask1;
 num ^= mask2;
 }
 mask1 <<= 1;
 mask2 >>= 1;
 }
;
{
(*temptemp1) = num ;
;
}
 return 0;
}
