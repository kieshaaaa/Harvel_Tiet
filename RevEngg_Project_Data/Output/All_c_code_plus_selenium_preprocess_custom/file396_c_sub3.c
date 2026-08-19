#include<stdio.h>

void PrintPrimeFactors(int n) {
 while (n % 2 == 0) {
;
 n /= 2;
 }
 for (int i = 3; i <= n; i += 2) {
 while (n % i == 0) {
;
 n /= i;
 }
 }
}
int entry_point(int (*num)) {
;
;
 PrintPrimeFactors((*num));
;
 return 0;
}
