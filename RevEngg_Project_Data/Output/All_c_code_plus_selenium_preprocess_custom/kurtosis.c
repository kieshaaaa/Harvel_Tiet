#include <stdio.h>
#include <math.h>

int entry_point(int (*n), double (*arr), int (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4), float (*temptemp5)) {
int i;
double sum = 0;
double mean;
double sumOfQuads = 0;
double variance = 0;
double kurtosis;
double stdDeviation;
;
 double arr[(*n)];
 for(i = 0; i < (*n); i++) {
{
(*temptemp1) = i+1 ;
;
}
 sum = sum + arr[i];
 }
 mean = sum / (*n);
 for(i = 0; i < (*n); i++) {
 variance += pow(arr[i] - mean, 2);
 }
 variance /= (*n);
 stdDeviation = sqrt(variance);
 for(i = 0; i < (*n); i++) {
 sumOfQuads += pow(arr[i] - mean, 4);
 }
 kurtosis = ((*n) * ((*n) + 1) * sumOfQuads) / (((*n) - 1) * ((*n) - 2) * ((*n) - 3) * pow(stdDeviation, 4)) - (3 * pow((*n) - 1, 2)) / (((*n) - 2) * ((*n) - 3));
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
(*temptemp5) = kurtosis ;
;
}
 return 0;
}
