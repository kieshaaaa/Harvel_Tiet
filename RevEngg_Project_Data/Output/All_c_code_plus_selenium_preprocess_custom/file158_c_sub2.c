#include <stdio.h>

int entry_point(int (*count), float (*numbers), float (*temptemp1)) {
int i;
float swap;
;
;
 for (i = 0; i < (*count); i++) {
 }
 i = 0;
 while (i < (*count)) {
 if (i == 0 || numbers[i - 1] <= numbers[i]) {
 i++;
 } else {
 swap = numbers[i];
 numbers[i] = numbers[i - 1];
 numbers[i - 1] = swap;
 i--;
 }
 }
;
 for (i = 0; i < (*count); i++) {
{
(*temptemp1) = numbers[i] ;
;
}
 }
 return 0;
}
