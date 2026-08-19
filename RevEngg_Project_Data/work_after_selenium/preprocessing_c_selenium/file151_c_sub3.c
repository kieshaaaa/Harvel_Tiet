#include <stdio.h>

int entry_point(int (*number), int (*temptemp1), int (*temptemp2)) {
int tempNumber;
int rem = 0;
int sum = 0;
;
 tempNumber = (*number);
 do {
 rem = tempNumber % 10;
 sum = sum + (rem * rem * rem);
 tempNumber /= 10;
 } while (tempNumber != 0);
 if (sum == (*number))
{
(*temptemp1) = (*number) ;
;
}
 else
{
(*temptemp2) = (*number) ;
;
}
 return 0;
}
