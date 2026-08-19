#include<stdio.h>

int entry_point(int (*size), int (*vals), int (*temptemp1), int (*temptemp2)) {
int swapped;
int n;
int m;
;
 m = 0;
 while(m < (*size)) {
{
(*temptemp1) = m + 1 ;
;
}
 m++;
 }
 for (m = 0; m < (*size); m++) {
 for (n = 0; n < (*size) - m - 1; n++) {
 if (vals[n] < vals[n + 1]) {
 swapped = vals[n];
 vals[n] = vals[n + 1];
 vals[n + 1] = swapped;
 }
 }
 }
;
 for (m = 0; m < (*size); m++)
{
(*temptemp2) = vals[m] ;
;
}
;
 return 0;
}
