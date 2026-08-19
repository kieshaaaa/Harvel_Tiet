#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
int digit;
int sum = 0;
int product = 1;
;
 while ((*num) > 0) {
 digit = (*num) % 10;
 sum = sum + digit;
 product = product * digit;
 (*num) = (*num) / 10;
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
