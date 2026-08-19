#include <stdio.h>

int entry_point(int (*number), int (*temptemp1), int (*temptemp2)) {
int divisible;
int result;
;
 divisible = ((*number) % 3 == 0) ? 1 : 0;
 result = (*number) + (divisible ? 1 : 2);
 if (divisible) {
{
(*temptemp1) = result ;
;
}
 } else {
{
(*temptemp2) = result ;
;
}
 }
 return 0;
}
