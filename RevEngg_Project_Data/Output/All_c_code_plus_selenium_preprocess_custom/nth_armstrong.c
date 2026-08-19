#include <stdio.h>
#include <math.h>

int countDigits(int n) {
 int count = 0;
 while(n != 0) {
 n /= 10;
 count++;
 }
 return count;
}
int isArmstrong(int num) {
 int n = countDigits(num);
 int temp = num, sum = 0;
 while (temp != 0) {
 int remainder = temp % 10;
 sum += pow(remainder, n);
 temp /= 10;
 }
 return num == sum;
}
int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int num = 1;
int count = 0;
;
 while(1) {
 if(isArmstrong(num)) {
 count++;
 if(count == (*n)) {
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
