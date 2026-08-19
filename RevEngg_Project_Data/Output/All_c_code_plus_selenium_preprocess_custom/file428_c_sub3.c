#include <stdio.h>

int entry_point(float (*weight), float (*height), float (*temptemp1)) {
float bmi;
float squareMeterHeight;
float meterHeight;
;
;
 meterHeight = (*height) / 100;
 squareMeterHeight = meterHeight * meterHeight;
 bmi = (*weight) / squareMeterHeight;
;
{
(*temptemp1) = bmi ;
;
}
 return 0;
}
