#include <stdio.h>

int entry_point(int (*rows)) {
int space;
int j;
int i;
;
 if ((*rows) < 1) {
;
 return -1;
 }
 for(i = 1; i <= (*rows); i++) {
 for(j = 1; j <= (*rows); j++) {
 if(j == i || j == (*rows) - i + 1) {
;
 } else {
;
 }
 }
 for(j = (*rows) + 1; j <= 2 * (*rows); j++) {
 if(j == i + (*rows) || j == 3 * (*rows) - i + 1) {
;
 } else {
;
 }
 }
;
 }
 return 0;
}
