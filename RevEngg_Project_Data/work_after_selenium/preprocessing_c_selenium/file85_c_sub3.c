#include <stdio.h>

int entry_point(int (*arr), int (*temptemp1)) {
int temp;
int j;
int i;
int arr[5] = {0};
;
 for (i = 0; i < 5; ++i) {
 }
 for (i = 1; i < 5; ++i) {
 for (j = i; j > 0 && arr[j - 1] > arr[j]; --j) {
 temp = arr[j];
 arr[j] = arr[j - 1];
 arr[j - 1] = temp;
 }
 }
;
 for (i = 0; i < 5; ++i) {
{
(*temptemp1) = arr[i] ;
;
}
 }
 return 0;
}
