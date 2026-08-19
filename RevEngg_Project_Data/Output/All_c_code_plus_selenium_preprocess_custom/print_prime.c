#include<stdio.h>
#include<stdlib.h>

int entry_point(int (*number1), int (*number2), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4), int (*temptemp5))
{
int j;
int i;
int temp;
int flag;
int count = 0;
;
 if((*number2)<2)
 {
{
(*temptemp1) = (*number2) ;
;
}
 }
;
 temp = (*number1);
 if((*number1) % 2 == 0)
 {
 (*number1) = (*number1) + 1;
 }
 for(i=(*number1); i<=(*number2); i=i+2)
 {
 flag = 0;
 for(j=2; j<=i/2; j++)
 {
 if((i%j)==0)
 {
 flag = 1;
 break;
 }
 }
 if(flag == 0)
 {
{
(*temptemp2) = i ;
;
}
 count = count + 1;
 }
 }
{
(*temptemp3) = temp ;
(*temptemp4) = (*number2) ;
(*temptemp5) = count ;
;
}
return 0;
}
