#include <stdio.h>

long factorial(int);
long find_ncr(int, int);
long find_npr(int, int);
int entry_point(int (*n), int (*r), int (*temptemp1), int (*temptemp2), long int (*temptemp3), int (*temptemp4), int (*temptemp5), long int (*temptemp6))
{
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
long find_ncr(int n, int r) {
 long result;
 result = factorial(n)/(factorial(r)*factorial(n-r));
 return result;
}
long find_npr(int n, int r) {
 long result;
 result = factorial(n)/factorial(n-r);
 return result;
}
long factorial(int n) {
 int c;
 long result = 1;
 for (c = 1; c <= n; c++)
 result = result*c;
 return result;
}
