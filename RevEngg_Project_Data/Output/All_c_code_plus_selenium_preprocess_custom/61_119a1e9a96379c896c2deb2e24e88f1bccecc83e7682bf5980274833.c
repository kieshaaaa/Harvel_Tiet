#include<stdio.h>
#include<math.h>

int entry_point(int (*N), float (*temptemp1))
{
int i;
float sum;
int count;
;
 sum=0.0f;
 count=1;
 for(i=1;i<=(*N);i++)
 {
 sum = sum + ( (float)(pow(count,2)) / (float)(pow(count,3)) );
 count+=2;
 }
{
(*temptemp1) = sum ;
;
}
 return 0;
}
