#include <stdio.h>

int entry_point(int (*num1), int (*num2), char (*ch), float (*temptemp1)) {
float result;
int validOperation = 0;
;
;
 while(!validOperation) {
;
 switch((*ch)) {
 case '+':
 case '-':
 case '*':
 case '/':
 case '%':
 validOperation = 1;
 break;
 default:
;
 }
 }
 switch((*ch)) {
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
 result = (*num2) != 0 ? (float)(*num1) / (*num2) : 0;
;
 break;
 case '%':
 result = (*num2) != 0 ? (*num1) % (*num2) : 0;
;
 break;
 }
 if((*num2) != 0 || (*ch) != '/' && (*ch) != '%') {
{
(*temptemp1) = result ;
;
}
 }
 return 0;
}
