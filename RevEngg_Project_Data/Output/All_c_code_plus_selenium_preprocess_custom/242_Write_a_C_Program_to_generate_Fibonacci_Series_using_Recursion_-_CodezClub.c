#include<stdio.h>

void fibonacci(int,int,int);
int entry_point(int (*n), int (*temptemp1))
{
int b=1;
int a=0;
;
{
(*temptemp1) = (*n) ;
;
}
 fibonacci(a,b,(*n));
;
 return 0;
}
void fibonacci(int a,int b, int n){
 if(n!=0)
 {
;
 fibonacci(b,a+b,n-1);
 }
}
