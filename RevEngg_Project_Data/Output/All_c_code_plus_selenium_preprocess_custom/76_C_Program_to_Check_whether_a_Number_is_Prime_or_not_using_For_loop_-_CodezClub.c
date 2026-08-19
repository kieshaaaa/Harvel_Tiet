#include<stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2))
{
int prime = 1;
int i;
;
 for(i=2; i<(*n); i++)
 {
 if((*n)%i == 0)
 {
 prime = 0;
 break;
 }
 }
 if(prime)
{
(*temptemp1) = (*n) ;
;
}
 else
{
(*temptemp2) = (*n) ;
;
}
 return 0;
}
