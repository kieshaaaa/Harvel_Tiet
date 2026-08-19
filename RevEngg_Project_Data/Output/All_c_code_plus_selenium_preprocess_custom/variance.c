#include <stdio.h>

int entry_point(int (*n), double (*arr), int (*temptemp1), float (*temptemp2), float (*temptemp3)) {
int i;
double sum = 0;
double mean;
double variance = 0;
double sumOfSquares = 0;
 double arr[(*n)];
;
 for(i = 0; i < (*n); i++) {
{
(*temptemp1) = i+1 ;
;
}
 sum += arr[i];
 }
 mean = sum / (*n);
 for(i = 0; i < (*n); i++) {
 sumOfSquares += (arr[i] - mean) * (arr[i] - mean);
 }
 variance = sumOfSquares / (*n);
{
(*temptemp2) = mean ;
;
}
{
(*temptemp3) = variance ;
;
}
 return 0;
}
