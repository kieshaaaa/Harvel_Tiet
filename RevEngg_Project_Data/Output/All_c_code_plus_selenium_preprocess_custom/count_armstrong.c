#include <math.h>
#include <stdlib.h>
#include <stdio.h>

int entry_point(int (*start), int (*end), int (*temptemp1)) {
int count = 0;
int num;
;
;
 for (num = (*start); num <= (*end); num++) {
int originalNum;
int remainder;
int n = 0;
float result = 0.0;
 originalNum = num;
 for (originalNum = num; originalNum != 0; ++n) {
 originalNum = originalNum / 10;
 }
 originalNum = num;
 while (originalNum != 0) {
 remainder = originalNum % 10;
 result = result + pow(remainder, n);
 originalNum = originalNum / 10;
 }
 if (result == num) {
 count = count + 1;
 }
 }
{
(*temptemp1) = count ;
;
}
 return 0;
}
