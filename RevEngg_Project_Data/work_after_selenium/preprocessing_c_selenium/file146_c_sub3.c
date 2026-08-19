#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int prime = 1;
;
 if ((*num) < 2) {
;
 } else if ((*num) != 2 && (*num) % 2 == 0) {
{
(*temptemp1) = (*num) ;
;
}
 } else {
int i = 3;
 if ((*num) % i == 0) {
 prime = 0;
 break;
 }
 }
 if (prime)
{
(*temptemp2) = (*num) ;
;
}
 else
{
(*temptemp3) = (*num) ;
;
}
 }
;
 return 0;
}
