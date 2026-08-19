#include <stdlib.h>
#include <stdio.h>

int entry_point(int (*start), int (*end), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
;
;
{
(*temptemp1) = (*start) ;
(*temptemp2) = (*end) ;
;
}
int counter = (*start);
 while (counter <= (*end)) {
 if (counter % 2 == 0) {
{
(*temptemp3) = counter ;
;
}
 }
 counter++;
 }
 return 0;
}
