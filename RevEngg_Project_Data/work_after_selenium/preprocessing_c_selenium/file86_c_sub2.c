#include <math.h>
#include <stdio.h>

int entry_point(int (*limit), int (*temptemp1), int (*temptemp2)) {
int odd = 1;
int squareSum = 0;
int count = 0;
;
 while (squareSum + odd <= (*limit)) {
 squareSum += odd;
 odd += 2;
 count++;
 }
{
(*temptemp1) = (*limit) ;
;
}
{
(*temptemp2) = count ;
;
}
 return 0;
}
