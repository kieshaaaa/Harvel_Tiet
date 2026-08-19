#include <stdio.h>

int entry_point(int (*n), int (*r), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int i;
int fact_nr;
int fact_n;
int permutation;
;
;
 fact_n = 1;
 fact_nr = 1;
 for (i = 1; i <= (*n); i++) {
 fact_n *= i;
 if (i == ((*n) - (*r))) {
 fact_nr = fact_n;
 }
 }
 permutation = fact_n / fact_nr;
{
(*temptemp1) = (*n) ;
(*temptemp2) = (*r) ;
(*temptemp3) = permutation ;
;
}
 return 0;
}
