#include <stdio.h>

int entry_point(int (*size), int (*arr), int (*temptemp1), int (*temptemp2)) {
int key;
int j;
int i;
;
;
 for (i = 0; i < (*size); i++) {
{
(*temptemp1) = i + 1 ;
;
}
 }
 for (i = 1; i < (*size); i++) {
 key = arr[i];
 j = i - 1;
 while (j >= 0 && arr[j] < key) {
 arr[j + 1] = arr[j];
 j = j - 1;
 }
 arr[j + 1] = key;
 }
;
 for (i = 0; i < (*size); i++) {
{
(*temptemp2) = arr[i] ;
;
}
 }
 return 0;
}
