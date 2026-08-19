#include <stdio.h>
#include <math.h>

int entry_point(int (*start), int (*end), int (*temptemp1)) {
;
;
int count = 0;
int num = (*start);
int n = num;
int sum = 0;
int digits = log10(num) + 1;
 while (n > 0) {
int digit = n % 10;
 sum += pow(digit, digits);
 n /= 10;
 }
 if (sum == num) count++;
 }
{
(*temptemp1) = count ;
;
}
 return 0;
}
