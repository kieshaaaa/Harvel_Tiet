#include <stdio.h>

int entry_point(int (*number), int (*temptemp1), int (*temptemp2)) {
int power;
int tempNumber;
int rem = 0;
int sum = 0;
;
 tempNumber = (*number);
 while (tempNumber != 0) {
 rem = tempNumber % 10;
 power = rem * rem * rem;
 sum += power;
 tempNumber /= 10;
 }
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
