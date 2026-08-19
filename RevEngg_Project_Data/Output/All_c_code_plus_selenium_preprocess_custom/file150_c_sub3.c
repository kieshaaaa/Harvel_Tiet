#include <stdio.h>

int entry_point(int (*number)) {
int shift;
int foundOne = 0;
;
;
 for (shift = 31; shift >= 0; shift--) {
 if ((*number) & (1 << shift)) {
;
 foundOne = 1;
 } else if (foundOne) {
;
 }
 }
;
;
 return 0;
}
