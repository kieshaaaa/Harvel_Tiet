#include <stdio.h>

int entry_point(int (*N), int (*A), int (*temptemp1), int (*temptemp2)) {
int min_idx;
int j;
int i;
int Temp;
;
;
 for (i = 0; i < (*N); i++) {
{
(*temptemp1) = i + 1 ;
;
}
 }
 for (i = 0; i < (*N) - 1; i++) {
 min_idx = i;
 for (j = i + 1; j < (*N); j++) {
 if (A[j] < A[min_idx]) {
 min_idx = j;
 }
 }
 Temp = A[i];
 A[i] = A[min_idx];
 A[min_idx] = Temp;
 }
;
 for (i = 0; i < (*N); i++) {
{
(*temptemp2) = A[i] ;
;
}
 }
;
 return 0;
}
