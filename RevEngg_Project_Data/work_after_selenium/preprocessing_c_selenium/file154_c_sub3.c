#include <stdio.h>

int entry_point(char (*operation), float (*num1), float (*num2), float (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4)) {
float result;
;
;
;
 switch ((*operation)) {
 case '+':
 result = (*num1) + (*num2);
{
(*temptemp1) = result ;
;
}
 break;
 case '-':
 result = (*num1) - (*num2);
{
(*temptemp2) = result ;
;
}
 break;
 case '*':
 result = (*num1) * (*num2);
{
(*temptemp3) = result ;
;
}
 break;
 case '/':
 if ((*num2) != 0.0f) {
 result = (*num1) / (*num2);
{
(*temptemp4) = result ;
;
}
 } else {
;
 }
 break;
 default:
;
 }
 return 0;
}
