#include<stdio.h>

int entry_point(char (*a), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4))
{
int result=0;
int num2;
int num1;
;
;
 switch ((*a))
 {
 case '+':
{
(*temptemp1) = num1+num2 ;
;
}
 break;
 case '-':
{
(*temptemp2) = num1-num2 ;
;
}
 break;
 case '*':
{
(*temptemp3) = num1*num2 ;
;
}
 break;
 case '/':
{
(*temptemp4) = num1/num2 ;
;
}
 break;
 default:
;
 }
 return 0;
}
