#include<stdio.h>

int entry_point(int (*num), char (*temptemp1)) {
int n;
int digitCount = 0;
;
 n = (*num);
 while (n > 0) {
 digitCount++;
 n /= 10;
 }
 char *words[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
 int digits[digitCount];
 n = (*num);
int i = 0;
 digits[digitCount - 1 - i] = n % 10;
 n /= 10;
 }
int i = 0;
{
(*temptemp1) = words[digits[i]] ;
;
}
 }
 return 0;
}
