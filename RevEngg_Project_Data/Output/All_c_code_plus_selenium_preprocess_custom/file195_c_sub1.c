#include <stdio.h>

int entry_point(int (*n), int (*arr), int (*pos), int (*val), int (*temptemp1)) {
int i;
;
 for (i = 0; i < (*n); i++) {
 }
;
;
 for (i = (*n); i >= (*pos); --i) {
 arr[i] = arr[i - 1];
 }
 arr[(*pos) - 1] = (*val);
 ++(*n);
;
 for (i = 0; i < (*n); ++i) {
{
(*temptemp1) = arr[i] ;
;
}
 }
 return 0;
}
