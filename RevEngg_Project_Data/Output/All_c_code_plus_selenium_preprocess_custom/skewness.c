#include <math.h>
#include <stdio.h>

int entry_point(int (*n), double (*arr), int (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4), float (*temptemp5)) {
int i;
double sum = 0;
double mean;
double sumOfCubes = 0;
double variance = 0;
double skewness;
double stdDeviation;
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
 variance /= (*n);
 stdDeviation = sqrt(variance);
 for(i = 0; i < (*n); i++) {
 sumOfCubes += pow(arr[i] - mean, 3);
 }
 skewness = ((*n) / (((*n) - 1.0) * ((*n) - 2.0))) * (sumOfCubes / (*n)) / pow(stdDeviation, 3);
{
(*temptemp2) = mean ;
;
}
{
(*temptemp3) = variance ;
;
}
{
(*temptemp4) = stdDeviation ;
;
}
{
(*temptemp5) = skewness ;
;
}
 return 0;
}
