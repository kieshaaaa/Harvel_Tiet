#include <stdio.h>
#include <math.h>

int entry_point(int (*start), int (*end), int (*temptemp1)) {
;
;
int count = 0;
int num = (*start);
int digits = 0;
int sum = 0;
int temp = num;
 while (temp > 0) {
 digits++;
 temp /= 10;
 }
 temp = num;
 while (temp > 0) {
int digit = temp % 10;
 sum += pow(digit, digits);
 temp /= 10;
 }
 if (sum == num) count++;
 }
{
(*temptemp1) = count ;
;
}
 return 0;
}
