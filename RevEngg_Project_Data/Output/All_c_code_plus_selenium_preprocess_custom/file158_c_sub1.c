#include <stdio.h>

int entry_point(int (*n), float (*array), int (*temptemp1), float (*temptemp2)) {
int index;
float temp;
;
{
(*temptemp1) = (*n) ;
;
}
 for (index = 0; index < (*n); index++) {
 }
 index = 0;
 while (index < (*n)) {
 if (index == 0 || array[index - 1] <= array[index]) {
 index++;
 } else {
 temp = array[index];
 array[index] = array[index - 1];
 array[index - 1] = temp;
 index--;
 }
 }
;
 for (index = 0; index < (*n); index++) {
{
(*temptemp2) = array[index] ;
;
}
 }
 return 0;
}
