#include<stdio.h>

int entry_point(float (*height), float (*weight), float (*temptemp1)) {
float bmi;
;
;
 (*height) /= 100;
 bmi = (*weight) / ((*height) * (*height));
{
(*temptemp1) = bmi ;
;
}
 if(bmi < 16) {
;
 } else if(bmi < 18.5) {
;
 } else if(bmi < 25) {
;
 } else if(bmi < 30) {
;
 } else {
;
 }
 return 0;
}
