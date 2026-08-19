#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
int product = 1;
int sum = 0;
;
 for (; (*num) > 0; (*num) /= 10) {
int digit = (*num) % 10;
 sum = sum + digit;
 product = product * digit;
 }
{
(*temptemp1) = sum ;
;
}
{
(*temptemp2) = product ;
;
}
 return 0;
}
