#include <stdio.h>

int entry_point(int (*n), float (*arr), int (*temptemp1), float (*temptemp2), float (*temptemp3)) {
int i;
float temp;
float sumOfSquares = 0;
float variance;
float mean;
float sum = 0;
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
 temp = arr[i] - mean;
 sumOfSquares += temp * temp;
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
