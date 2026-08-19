#include <stdlib.h>
#include <stdio.h>

int entry_point(int (*start), int (*end), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int counter;
;
;
{
(*temptemp1) = (*start) ;
(*temptemp2) = (*end) ;
;
}
 for (counter = (*start); counter <= (*end); counter++) {
 if (counter % 2 == 1) {
{
(*temptemp3) = counter ;
;
}
 }
 }
 return 0;
}
