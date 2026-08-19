#include <stdio.h>

int entry_point(unsigned int (*temptemp1)) {
unsigned int revNum = 0;
unsigned int num = 0x4;
char half = sizeof(num) * 4;
unsigned int right;
unsigned int left;
int i = 0;
 left = (num >> (half + i)) & 1;
 right = (num >> i) & 1;
 if (left != right) {
 revNum |= (1 << i) | (1 << (half + i));
 }
 }
;
{
(*temptemp1) = revNum ;
;
}
 return 0;
}
