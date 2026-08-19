#include <stdio.h>

int entry_point(int (*year), int (*temptemp1), int (*temptemp2)) {
;
int leap = ((*year) % 400 == 0) ? 1 : (((*year) % 100 == 0) ? 0 : (((*year) % 4 == 0) ? 1 : 0));
 if (leap) {
{
(*temptemp1) = (*year) ;
;
}
 } else {
{
(*temptemp2) = (*year) ;
;
}
 }
 return 0;
}
