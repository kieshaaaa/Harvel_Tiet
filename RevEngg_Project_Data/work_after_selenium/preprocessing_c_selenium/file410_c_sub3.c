#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2)) {
int step = 1;
int value = 100;
 if (step == 1) {
{
(*temptemp1) = value ;
;
}
 step++;
 }
 if (step == 2) {
 value = 200;
{
(*temptemp2) = value ;
;
}
 }
 return 0;
}
