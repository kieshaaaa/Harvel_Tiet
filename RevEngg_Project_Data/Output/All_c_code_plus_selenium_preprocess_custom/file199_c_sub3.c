#include<stdio.h>

int entry_point(float (*heightM), float (*weight), float (*temptemp1)) {
float bmi;
;
;
 (*heightM) = (*heightM) / 100;
 bmi = (*weight) / ((*heightM) * (*heightM));
{
(*temptemp1) = bmi ;
;
}
 if(bmi <= 18.5) {
;
 } else if(bmi > 18.5 && bmi <= 24.9) {
;
 } else if(bmi >= 25 && bmi <= 29.9) {
;
 } else {
;
 }
;
 return 0;
}
