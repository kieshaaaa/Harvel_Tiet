#include <stdio.h>

int entry_point(int (*n), int (*temptemp1)) {
int i;
;
 if ((*n) < 0) {
;
 return 1;
 }
 if ((*n) == 0) {
;
 return 0;
 } else if ((*n) == 1) {
;
 return 0;
 }
int prev = 0;
int curr = 1;
int next;
 for (i = 2; i <= (*n); i++) {
 next = prev + curr;
 prev = curr;
 curr = next;
 }
{
(*temptemp1) = curr ;
;
}
 return 0;
}
