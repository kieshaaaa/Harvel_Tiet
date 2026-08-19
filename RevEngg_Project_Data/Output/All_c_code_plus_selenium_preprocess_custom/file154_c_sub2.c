#include <stdio.h>

int entry_point(char (*operation), float (*num1), float (*num2), float (*temptemp1)) {
float result;
;
;
 switch((*operation)) {
 case '+':
 result = (*num1) + (*num2);
 break;
 case '-':
 result = (*num1) - (*num2);
 break;
 case '*':
 result = (*num1) * (*num2);
 break;
 case '/':
 if((*num2) == 0){
;
 return 0;
 } else {
 result = (*num1) / (*num2);
 }
 break;
 default:
;
 return 0;
 }
{
(*temptemp1) = result ;
;
}
 return 0;
}
