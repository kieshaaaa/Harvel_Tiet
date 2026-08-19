#include <stdio.h>

long find_ncr(int n, int r) {
 long n_fact = 1, r_fact = 1, n_r_fact = 1;
 int i;
 for (i = 1; i <= n; i++) {
 n_fact *= i;
 if (i <= r) r_fact *= i;
 if (i <= n - r) n_r_fact *= i;
 }
 return n_fact / (r_fact * n_r_fact);
}
long find_npr(int n, int r) {
 long n_fact = 1, n_r_fact = 1;
 int i;
 for (i = 1; i <= n; i++) {
 n_fact *= i;
 if (i <= n - r) n_r_fact *= i;
 }
 return n_fact / n_r_fact;
}
int entry_point(int (*n), int (*r), int (*temptemp1), int (*temptemp2), long int (*temptemp3), int (*temptemp4), int (*temptemp5), long int (*temptemp6)) {
 long ncr, npr;
;
;
 ncr = find_ncr((*n), (*r));
 npr = find_npr((*n), (*r));
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
