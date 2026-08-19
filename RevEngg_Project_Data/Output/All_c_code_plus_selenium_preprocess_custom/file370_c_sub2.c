#include <stdio.h>

int entry_point(int (*n), float (*arr), int (*temptemp1), float (*temptemp2), float (*temptemp3)) {
int i;
float diff;
float sumOfSquares = 0;
float variance = 0;
float mean;
float sum = 0;
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
 diff = arr[i] - mean;
 sumOfSquares += diff * diff;
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
