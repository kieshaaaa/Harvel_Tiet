#include <stdio.h>

int entry_point(int (*n), int (*array), int (*temptemp1), int (*temptemp2)) {
int swapFlag;
int j;
int i;
;
 for(i = 0; i < (*n); i++) {
{
(*temptemp1) = i+1 ;
;
}
 }
 for (i = 0; i < (*n)-1; i++) {
 swapFlag = 0;
 for (j = 0; j < (*n)-1-i; j++) {
 if (array[j] > array[j+1]) {
int temp = array[j];
 array[j] = array[j+1];
 array[j+1] = temp;
 swapFlag = 1;
 }
 }
 if (swapFlag == 0) {
 break;
 }
 }
;
 for(i = 0; i < (*n); i++) {
{
(*temptemp2) = array[i] ;
;
}
 }
 return 0;
}
