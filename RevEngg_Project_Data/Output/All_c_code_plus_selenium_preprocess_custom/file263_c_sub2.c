#include <stdio.h>

int entry_point(int (*n), int (*arr), int (*temptemp1), int (*temptemp2)) {
int i = 0;
int sum = 0;
;
 while (i < (*n)) {
{
(*temptemp1) = i+1 ;
;
}
 i++;
 }
 i = 0;
 while (i < (*n)) {
 sum += arr[i];
 i++;
 }
{
(*temptemp2) = sum ;
;
}
 return 0;
}
