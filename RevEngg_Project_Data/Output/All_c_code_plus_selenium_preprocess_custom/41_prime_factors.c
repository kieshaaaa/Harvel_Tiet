#include <stdio.h>
#include <stdlib.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2))
{
;
 if ((*num) <= 0)
 {
;
 exit(0);
 }
 else if ((*num) == 1)
 {
;
 exit(0);
 }
{
(*temptemp1) = (*num) ;
;
}
int i = 2;
 {
 while ((*num) % i == 0)
 {
{
(*temptemp2) = i ;
;
}
 (*num) /= i;
 }
 }
;
 return 0;
}
