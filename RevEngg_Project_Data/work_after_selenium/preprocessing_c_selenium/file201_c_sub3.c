#include <stdio.h>

int entry_point(int (*numA), int (*numB), int (*temptemp1), int (*temptemp2), int (*temptemp3))
{
int sum = 0;
;
;
 while ((*numB) > 0) {
 if ((*numB) % 2 == 0) {
 (*numA) = (*numA) * 2;
 (*numB) = (*numB) / 2;
 } else {
 sum += (*numA);
 (*numB)--;
 }
 }
;
{
(*temptemp1) = (*numA) ;
;
}
;
{
(*temptemp2) = (*numB) ;
;
}
;
{
(*temptemp3) = sum ;
;
}
 return 0;
}
