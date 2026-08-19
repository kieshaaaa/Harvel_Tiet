#include <stdio.h>

int entry_point(int (*n), float (*arr), int (*temptemp1), float (*temptemp2), float (*temptemp3)) {
int i;
float sum = 0;
float mean;
float variance = 0;
float sumOfSquares = 0;
;
 for(i = 0; i < (*n); i++) {
{
(*temptemp1) = i+1 ;
;
}
 sum = sum + arr[i];
 }
 mean = sum / (*n);
 for(i = 0; i < (*n); i++) {
float diff = arr[i] - mean;
 sumOfSquares = sumOfSquares + diff * diff;
 }
 variance = sumOfSquares / (*n);
;
{
(*temptemp2) = mean ;
;
}
;
{
(*temptemp3) = variance ;
;
}
 return 0;
}
