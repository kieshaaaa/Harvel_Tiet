#include <stdio.h>

int entry_point(int (*size), float (*arr), int (*temptemp1), float (*temptemp2), int (*temptemp3)) {
int steps = 0;
int pos;
float hold;
;
{
(*temptemp1) = (*size) ;
;
}
 for (pos = 0; pos < (*size); pos++) {
 }
 pos = 0;
 while (pos < (*size)) {
 if (pos == 0 || arr[pos - 1] <= arr[pos]) {
 pos++;
 } else {
 hold = arr[pos];
 arr[pos] = arr[pos - 1];
 arr[pos - 1] = hold;
 pos--;
 steps++;
 }
 }
;
 for (pos = 0; pos < (*size); pos++) {
{
(*temptemp2) = arr[pos] ;
;
}
 }
{
(*temptemp3) = steps ;
;
}
 return 0;
}
