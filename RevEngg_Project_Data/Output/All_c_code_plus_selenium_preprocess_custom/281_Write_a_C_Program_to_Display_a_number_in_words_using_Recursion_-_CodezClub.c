#include<stdio.h>

void f(int n);
int entry_point(int (*num))
{
;
 f((*num));
 return 0;
}
void f(int n)
{
 if(n==0)
 return;
 f(n/10);
 switch(n%10)
 {
;
;
;
;
;
;
;
;
;
;
 }
}
