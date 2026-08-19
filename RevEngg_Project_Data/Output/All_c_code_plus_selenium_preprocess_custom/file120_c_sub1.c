#include<stdio.h>

int entry_point(float (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4)) {
float a = 5.0;
float b = 10.0;
float sum = a + b;
float diff = a - b;
float product = a * b;
float quotient = a / b;
{
(*temptemp1) = sum ;
;
}
{
(*temptemp2) = diff ;
;
}
{
(*temptemp3) = product ;
;
}
{
(*temptemp4) = quotient ;
;
}
 return 0;
}
