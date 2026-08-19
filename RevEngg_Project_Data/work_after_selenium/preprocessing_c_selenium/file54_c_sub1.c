#include <stdio.h>

void entry_point(int (*num), int (*array), int (*temptemp1), int (*temptemp2)) {
int swapped;
int temp;
int j;
int i;
;
;
 for (i = 0; i < (*num); i++) {
 }
;
 for (i = 0; i < (*num); i++) {
{
(*temptemp1) = array[i] ;
;
}
 }
 for (i = 0; i < (*num) - 1; i++) {
 swapped = 0;
 j = 0;
 while (j < (*num) - i - 1) {
 if (array[j] > array[j + 1]) {
 temp = array[j];
 array[j] = array[j + 1];
 array[j + 1] = temp;
 swapped = 1;
 }
 j++;
 }
 if (swapped == 0) break;
 }
;
 for (i = 0; i < (*num); i++) {
{
(*temptemp2) = array[i] ;
;
}
 }
}
