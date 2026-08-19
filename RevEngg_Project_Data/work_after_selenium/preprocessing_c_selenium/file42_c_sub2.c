#include <stdio.h>

int entry_point(int (*arr), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4), int (*temptemp5)) {
int size = 5;
int swapped;
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
 do {
 swapped = 0;
 for (i = 0; i < size - 1; i++) {
 if (arr[i] > arr[i + 1]) {
 temp = arr[i];
 arr[i] = arr[i + 1];
 arr[i + 1] = temp;
 swapped = 1;
 }
 }
 } while (swapped != 0);
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
