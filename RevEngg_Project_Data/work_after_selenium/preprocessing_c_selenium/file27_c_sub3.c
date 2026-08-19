#include <stdio.h>

int entry_point(int (*lower), int (*upper), int (*temptemp1)) {
int step;
;
;
int num = (*lower);
int digit;
int reversed = 0;
int temp = num;
 step = 1;
 while (temp != 0) {
 digit = temp % 10;
 reversed = reversed * 10 + digit;
 temp /= 10;
 }
 if (num == reversed) {
{
(*temptemp1) = num ;
;
}
 step = 2;
 }
 }
 return 0;
}
