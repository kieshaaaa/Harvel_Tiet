#include <stdio.h>

int entry_point(int (*n)) {
int star;
int space;
;
 if ((*n) < 1) {
;
 return 0;
 }
int row = 1;
 for (space = 1; space <= (*n) - row; space++) {
;
 }
 for (star = 1; star <= 2 * row - 1; star++) {
 if (star % 2 == 0) {
;
 } else {
;
 }
 }
;
 }
 return 0;
}
