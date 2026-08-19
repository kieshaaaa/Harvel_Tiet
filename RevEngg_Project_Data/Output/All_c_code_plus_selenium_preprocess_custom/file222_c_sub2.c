#include <math.h>
#include <stdio.h>

int entry_point(int (*n), float (*values), int (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4), float (*temptemp5)) {
int i;
float cubeDiffSum = 0;
float skew;
float stdDev;
float var = 0;
float avg;
float total = 0;
;
 for(i = 0; i < (*n); i++) {
{
(*temptemp1) = i+1 ;
;
}
 total += values[i];
 }
 avg = total / (*n);
 for(i = 0; i < (*n); i++) {
 var += pow(values[i] - avg, 2);
 }
 var = var / (*n);
 stdDev = sqrt(var);
 for(i = 0; i < (*n); i++) {
 cubeDiffSum += pow(values[i] - avg, 3);
 }
 skew = ((*n) / (((*n) - 1.0f) * ((*n) - 2.0f))) * (cubeDiffSum / (*n)) / pow(stdDev, 3);
;
{
(*temptemp2) = avg ;
;
}
;
{
(*temptemp3) = var ;
;
}
;
{
(*temptemp4) = stdDev ;
;
}
;
{
(*temptemp5) = skew ;
;
}
 return 0;
}
