#include <stdio.h>

int entry_point(int (*number), int (*temptemp1), int (*temptemp2)) {
;
int result = (*number) & 1;
 if (result == 0) {
{
(*temptemp1) = (*number) ;
;
}
 } else {
{
(*temptemp2) = (*number) ;
;
}
 }
 return 0;
}
