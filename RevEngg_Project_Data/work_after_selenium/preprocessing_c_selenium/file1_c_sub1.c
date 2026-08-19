#include <stdio.h>

int entry_point(int (*n), int (*arr), int (*item), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
 int arr[20], (*n), (*item);
int found = 0;
int i;
;
 for (i = 0; i < (*n); i++) {
{
(*temptemp1) = i + 1 ;
;
}
 }
;
 for (i = 0; i < (*n); i++) {
 if (arr[i] == (*item)) {
 found = 1;
{
(*temptemp2) = (*item) ;
(*temptemp3) = i ;
;
}
 break;
 }
 }
 if (!found) {
{
(*temptemp4) = (*item) ;
;
}
 }
 return 0;
}
