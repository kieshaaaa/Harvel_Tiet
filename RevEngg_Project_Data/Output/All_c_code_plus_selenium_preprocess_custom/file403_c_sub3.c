#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
;
 if ((*num) % 7 == 0) {
{
(*temptemp1) = (*num) ;
;
}
 if ((*num) % 3 == 0) {
;
 }
 } else if ((*num) % 3 == 0) {
{
(*temptemp2) = (*num) ;
;
}
 } else {
{
(*temptemp3) = (*num) ;
;
}
 }
 return 0;
}
