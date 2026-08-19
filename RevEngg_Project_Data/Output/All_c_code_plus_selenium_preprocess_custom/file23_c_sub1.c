#include <stdio.h>

int entry_point(int (*lower), int (*upper), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
;
;
int triangularNumber = 1;
int i = 1;
 while (triangularNumber < (*lower)) {
 i++;
 triangularNumber += i;
 }
{
(*temptemp1) = (*lower) ;
(*temptemp2) = (*upper) ;
;
}
 while (triangularNumber <= (*upper)) {
{
(*temptemp3) = triangularNumber ;
;
}
 i++;
 triangularNumber += i;
 }
 return 0;
}
