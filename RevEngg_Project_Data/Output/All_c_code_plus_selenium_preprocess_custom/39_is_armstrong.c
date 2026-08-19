#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2))
{
int result;
;
 if ((*num) < 0)
 {
;
 exit(0);
 }
int numOfDigits = 0;
int copyNum = (*num);
float sum = 0;
 while (copyNum)
 {
 numOfDigits++;
 copyNum /= 10;
 }
 copyNum = (*num);
 while (copyNum)
 {
 sum += pow(copyNum % 10, numOfDigits);
 copyNum /= 10;
 }
 if (sum == (*num))
{
result = 1;
{
(*temptemp1) = result ;
;
}
}
else
{
result = 0;
{
(*temptemp2) = result ;
;
}
}
 return 0;
}
