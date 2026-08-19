#include <stdio.h>

int entry_point(int (*rows)) {
;
 if ((*rows) < 1) {
;
 return 0;
 }
int cols = (*rows) * 3;
;
int i = 1;
int j = 1;
 if (j == (*rows) + 1 - i || j == (*rows) - 1 + i || j == (*rows) * 2 + 2 - i || j == (*rows) * 2 + i) {
;
 } else {
;
 }
 }
;
 }
 return 0;
}
