#include <stdio.h>

int entry_point(int (*count), int (*array), int (*temptemp1)) {
int divFactor = 1;
int maxDigit = 0;
int temp;
;
;
int i = 0;
;
;
int n = array[i];
int digitCount = 0;
 while(n > 0) {
 n /= 10;
 digitCount++;
 }
 if(digitCount > maxDigit) maxDigit = digitCount;
 }
int digit = 0;
int i = 0;
int j = 0;
 if((array[j] / divFactor) % 10 > (array[j+1] / divFactor) % 10) {
 temp = array[j];
 array[j] = array[j+1];
 array[j+1] = temp;
 }
 }
 }
 }
;
int i = 0;
{
(*temptemp1) = array[i] ;
;
}
 }
;
 return 0;
}
