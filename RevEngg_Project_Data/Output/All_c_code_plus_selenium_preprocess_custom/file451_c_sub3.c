#include <stdio.h>

void calculate_npr_ncr(int n, int r, long *ncr, long *npr) {
 *ncr = 1;
 *npr = 1;
 int i;
 for (i = 1; i <= n; ++i) {
 if (i <= r) {
 *npr *= n - r + i;
 *ncr *= n - r + i;
 *ncr /= i;
 } else if (i <= n - r) {
 *npr *= i;
 }
 }
}
int entry_point(int (*n), int (*r), int (*temptemp1), int (*temptemp2), long int (*temptemp3), int (*temptemp4), int (*temptemp5), long int (*temptemp6)) {
 long ncr, npr;
;
;
 calculate_npr_ncr((*n), (*r), &ncr, &npr);
{
(*temptemp1) = (*n) ;
(*temptemp2) = (*r) ;
(*temptemp3) = ncr ;
;
}
{
(*temptemp4) = (*n) ;
(*temptemp5) = (*r) ;
(*temptemp6) = npr ;
;
}
 return 0;
}
