#include <stdio.h>

int entry_point(int (*arr), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4), int (*temptemp5)) {
int size = 5;
int temp;
int j;
int i;
 for (i = 0; i < size; i++) {
{
(*temptemp1) = i ;
;
}
 }
;
 for (i = 0; i < size; i++) {
{
(*temptemp2) = i ;
(*temptemp3) = arr[i] ;
;
}
 }
 for (i = 0; i < size - 1; i++) {
 for (j = i + 1; j < size; j++) {
 if (arr[i] > arr[j]) {
 temp = arr[i];
 arr[i] = arr[j];
 arr[j] = temp;
 }
 }
 }
;
 for (i = 0; i < size; i++) {
{
(*temptemp4) = i ;
(*temptemp5) = arr[i] ;
;
}
 }
 return 0;
}
