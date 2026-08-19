#include <stdio.h>

int entry_point(int (*size), int (*arr), int (*temptemp1), int (*temptemp2)) {
int temp;
int j;
int i;
;
;
 for(i = 0; i < (*size); i++) {
{
(*temptemp1) = i+1 ;
;
}
 }
 for(i = 0; i < (*size) - 1; i++) {
 for(j = 0; j < (*size) - i - 1; j++) {
 if(arr[j] > arr[j + 1]) {
 temp = arr[j];
 arr[j] = arr[j + 1];
 arr[j + 1] = temp;
 }
 }
 }
;
 for(i = 0; i < (*size); i++) {
{
(*temptemp2) = arr[i] ;
;
}
 }
 return 0;
}
