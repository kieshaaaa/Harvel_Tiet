#include <stdio.h>

int entry_point(int (*year), int (*temptemp1), int (*temptemp2)) {
;
 if (((*year) % 4 == 0 && (*year) % 100 != 0) || ((*year) % 400 == 0)) {
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
