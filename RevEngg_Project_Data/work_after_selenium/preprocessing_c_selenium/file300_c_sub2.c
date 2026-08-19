#include <stdio.h>

int entry_point(int (*lim_up), int (*temptemp1)) {
int i = 0;
int C;
int B = 1;
int A = 0;
;
;
 while (B <= (*lim_up)) {
 if (i <= 1) {
 C = i;
 } else {
 C = A + B;
 A = B;
 B = C;
 }
{
(*temptemp1) = A ;
;
}
 i++;
 }
 return 0;
}
