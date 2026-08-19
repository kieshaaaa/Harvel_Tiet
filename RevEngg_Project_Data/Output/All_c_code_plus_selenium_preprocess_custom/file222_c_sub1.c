#include <stdio.h>
#include <math.h>

int entry_point(int (*n), float (*arr), int (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4), float (*temptemp5)) {
int i;
float sum = 0;
float sumOfCubes = 0;
float skewness;
float stdDeviation;
float variance = 0;
float mean;
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
 variance += pow(arr[i] - mean, 2);
 }
 variance = variance / (*n);
 stdDeviation = sqrt(variance);
 for(i = 0; i < (*n); i++) {
 sumOfCubes += pow(arr[i] - mean, 3);
 }
 skewness = ((*n) / (((*n) - 1.0f) * ((*n) - 2.0f))) * (sumOfCubes / (*n)) / pow(stdDeviation, 3);
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
;
{
(*temptemp4) = stdDeviation ;
;
}
;
{
(*temptemp5) = skewness ;
;
}
 return 0;
}
