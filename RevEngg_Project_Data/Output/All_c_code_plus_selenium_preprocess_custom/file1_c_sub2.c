#include <stdio.h>

int entry_point(int (*n), int (*arr), int (*item), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
 int arr[20], (*n), (*item);
int found = 0;
int i = 0;
;
 while (i < (*n)) {
{
(*temptemp1) = i + 1 ;
;
}
 i++;
 }
 i = 0;
;
 while (i < (*n)) {
 if (arr[i] == (*item)) {
 found = 1;
{
(*temptemp2) = (*item) ;
(*temptemp3) = i ;
;
}
 break;
 }
 i++;
 }
 if (!found) {
{
(*temptemp4) = (*item) ;
;
}
 }
 return 0;
}
