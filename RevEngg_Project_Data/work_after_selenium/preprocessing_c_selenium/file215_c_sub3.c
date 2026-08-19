#include <stdio.h>

int entry_point(int (*arr), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int temp;
int i;
;
 for (i = 0; i < 10; i++) {
{
(*temptemp1) = i ;
;
}
 }
int largest = arr[0];
int smallest = arr[0];
 for (i = 1; i < 10; i++) {
 temp = arr[i];
 if (temp > largest) {
 largest = temp;
 }
 if (temp < smallest) {
 smallest = temp;
 }
 }
{
(*temptemp2) = largest ;
;
}
{
(*temptemp3) = smallest ;
;
}
 return 0;
}
