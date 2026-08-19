#include <stdio.h>

int entry_point(int (*n), int (*numbers), int (*temptemp1)) {
int j;
int i;
;
;
 for (i = 0; i < (*n); i++) {
 }
 for (i = 0; i < (*n); i++) {
 for (j = i + 1; j < (*n); j++) {
 if (numbers[i] > numbers[j]) {
 numbers[i] = numbers[i] + numbers[j];
 numbers[j] = numbers[i] - numbers[j];
 numbers[i] = numbers[i] - numbers[j];
 }
 }
 }
;
 for (i = 0; i < (*n); i++) {
{
(*temptemp1) = numbers[i] ;
;
}
 }
 return 0;
}
