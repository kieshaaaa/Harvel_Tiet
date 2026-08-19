#include <stdio.h>

int entry_point(char (*str), char (*temptemp1), char (*temptemp2)) {
int palindrome = 1;
int length = 0;
int half;
;
 while (str[length] != '\0') length++;
 half = length / 2;
int i = 0;
 if (str[i] != str[length - i - 1]) {
 palindrome = 0;
 break;
 }
 }
 if (palindrome)
{
(*temptemp1) = (*str) ;
;
}
 else
{
(*temptemp2) = (*str) ;
;
}
 return 0;
}
