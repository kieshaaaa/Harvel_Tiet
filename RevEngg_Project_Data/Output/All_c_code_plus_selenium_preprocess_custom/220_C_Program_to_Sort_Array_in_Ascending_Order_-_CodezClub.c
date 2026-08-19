#include <stdio.h>

void entry_point(int (*n), int (*number), int (*temptemp1))
{
int a;
int j;
int i;
;
;
 for (i = 0; i < (*n); ++i)
 for (i = 0; i < (*n); ++i)
 {
 for (j = i + 1; j < (*n); ++j)
 {
 if (number[i] > number[j])
 {
 a = number[i];
 number[i] = number[j];
 number[j] = a;
 }
 }
 }
;
 for (i = 0; i < (*n); ++i)
{
(*temptemp1) = number[i] ;
;
}
}
