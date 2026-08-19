#include <stdio.h>

int entry_point(int (*rows), int (*temptemp1)) {
;
 if ((*rows) < 1) {
;
 return 0;
 }
;
int i = 0;
int col = (*rows);
 while (col > 0) {
{
(*temptemp1) = col ;
;
}
 col--;
 }
;
 }
 return 0;
}
