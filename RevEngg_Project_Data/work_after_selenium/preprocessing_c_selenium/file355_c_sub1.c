#include <stdio.h>

int entry_point(int (*n), int (*r), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int fact_n_r = 1;
int fact_n = 1;
int permutation;
;
;
int i = 1;
 fact_n *= i;
 if (i <= (*n) - (*r)) {
 fact_n_r *= i;
 }
 }
 permutation = fact_n / fact_n_r;
{
(*temptemp1) = (*n) ;
(*temptemp2) = (*r) ;
;
}
{
(*temptemp3) = permutation ;
;
}
 return 0;
}
