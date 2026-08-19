#include <math.h>
#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int count = 0;
int num = 1;
;
 while (1) {
int t = temp;
int digits = 0;
int sum = 0;
int temp = num;
 while (t != 0) {
 t /= 10;
 digits++;
 }
 t = temp;
 while (t != 0) {
int remainder = t % 10;
 sum += pow(remainder, digits);
 t /= 10;
 }
 if (num == sum) {
 count++;
 if (count == (*n)) {
{
(*temptemp1) = (*n) ;
(*temptemp2) = num ;
;
}
 break;
 }
 }
 num++;
 }
 return 0;
}
