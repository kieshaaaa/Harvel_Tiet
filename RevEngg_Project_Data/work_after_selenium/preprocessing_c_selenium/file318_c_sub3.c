#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
float half;
;
 half = (*num) / 2.0f;
 if ((half - (int)half) == 0) {
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
