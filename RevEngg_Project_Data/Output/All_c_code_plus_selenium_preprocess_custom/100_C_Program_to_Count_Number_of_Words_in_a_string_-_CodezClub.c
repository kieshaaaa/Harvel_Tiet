#include<stdio.h>

int entry_point(char (*str), char (*temptemp1), int (*temptemp2))
{
int i=0;
int flag =0;
int wc=0;
;
 while (str[i]!='\0')
 {
 if (str[i] == ' ' || str[i] == '\n' || str[i] == '\t')
 flag = 0;
 else if (flag == 0)
 {
 flag = 1;
 ++wc;
 }
 ++i;
 }
{
(*temptemp1) = (*str) ;
(*temptemp2) = wc ;
;
}
 return 0;
}
