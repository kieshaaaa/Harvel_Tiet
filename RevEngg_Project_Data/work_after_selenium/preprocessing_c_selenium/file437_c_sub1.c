#include <stdio.h>

int entry_point(int (*rows)) {
;
 if ((*rows) < 1) {
;
 return 0;
 }
int cols = 2 * (*rows) - 1;
;
int i = 1;
int j = 1;
 if (i == (*rows) || j == (*rows) - i + 1 || j == i + (*rows) - 1)
;
 else
;
 }
;
 }
 return 0;
}
