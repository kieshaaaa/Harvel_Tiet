#include <stdio.h>

int entry_point(int (*n), int (*arr), int (*position), int (*temptemp1), int (*temptemp2)) {
int i;
;
 if ((*n) > 100 || (*n) <= 0) {
;
 return 1;
 }
;
 for (i = 0; i < (*n); ++i) {
 }
{
(*temptemp1) = (*n) ;
;
 if ((*position) > (*n) || (*position) <= 0) {
;
 return 1;
 }
 for (i = (*position); i < (*n); ++i) {
 arr[i - 1] = arr[i];
 }
 --(*n);
;
 for (i = 0; i < (*n); ++i) {
{
(*temptemp2) = arr[i] ;
;
}
 }
;
 return 0;
}
