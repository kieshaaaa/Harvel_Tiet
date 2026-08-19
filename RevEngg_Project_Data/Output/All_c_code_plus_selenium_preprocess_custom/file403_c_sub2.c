#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
int isDivisible = 0;
;
 if ((*num) % 7 == 0) {
 isDivisible = 1;
 }
 if ((*num) % 3 == 0) {
 isDivisible = 1;
 }
 if (isDivisible) {
{
(*temptemp1) = (*num) ;
;
}
 } else {
{
(*temptemp2) = (*num) ;
;
}
 }
 return 0;
}
