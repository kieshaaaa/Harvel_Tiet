#include<stdio.h>

unsigned long factorial(int num)
{
 int i;
 unsigned long fact=1;
 for(i=num; i>=1; i--)
 fact= fact*i;
 return fact;
}
int entry_point(int (*N), float (*temptemp1))
{
int i;
float sum;
;
 sum=0.0f;
 for(i=1;i<=(*N);i++)
 sum = sum + ( (float)(i) / (float)(factorial(i)) );
{
(*temptemp1) = sum ;
;
}
 return 0;
}
