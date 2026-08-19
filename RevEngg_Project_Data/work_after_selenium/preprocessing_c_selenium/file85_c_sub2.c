#include <stdio.h>

int entry_point(int (*arr), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int temp;
int j;
int i;
;
 for (i = 0; i < 5; i++) {
{
(*temptemp1) = i ;
;
}
 }
;
 for (i = 0; i < 5; i++) {
{
(*temptemp2) = arr[i] ;
;
}
 }
 for (i = 0; i < 4; i++) {
 for (j = 0; j < 4 - i; j++) {
 if (arr[j] > arr[j + 1]) {
 temp = arr[j];
 arr[j] = arr[j + 1];
 arr[j + 1] = temp;
 }
 }
 }
;
 for (i = 0; i < 5; i++) {
{
(*temptemp3) = arr[i] ;
;
}
 }
;
 return 0;
}
