#include <stdio.h>

int entry_point(int (*num1), int (*num2), char (*ch), int (*temptemp1), char (*temptemp2), int (*temptemp3), float (*temptemp4))
{
float result;
;
;
;
 result=0;
 switch((*ch))
 {
 case '+':
 result=(*num1)+(*num2);
 break;
 case '-':
 result=(*num1)-(*num2);
 break;
 case '*':
 result=(*num1)*(*num2);
 break;
 case '/':
 result=(float)(*num1)/(float)(*num2);
 break;
 case '%':
 result=(*num1)%(*num2);
 break;
        default:
;
 }
{
(*temptemp1) = (*num1) ;
(*temptemp2) = (*ch) ;
(*temptemp3) = (*num2) ;
(*temptemp4) = result ;
;
}
 return 0;
}
