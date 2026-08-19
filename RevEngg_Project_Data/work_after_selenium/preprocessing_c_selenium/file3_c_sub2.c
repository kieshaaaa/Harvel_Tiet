#include <stdio.h>

int entry_point(int (*n)) {
;
 if ((*n) < 1) {
;
 return 0;
 }
 puts("\(*n)--------------------------------------------\(*n)");
int row = 0;
 while (row < (*n)) {
int space = 0;
 while (space < row) {
;
 space++;
 }
int star = (2 * ((*n) - row) - 1);
 while (star > 0) {
;
 star--;
 }
;
 row++;
 }
 return 0;
}
