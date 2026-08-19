#include <stdio.h>

int entry_point(int (*number), int (*temptemp1), int (*temptemp2)) {
int result;
;
 result = ((*number) % 7 == 0) ? (*number) + 1 : (*number) + 2;
 if ((*number) % 7 == 0) {
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
