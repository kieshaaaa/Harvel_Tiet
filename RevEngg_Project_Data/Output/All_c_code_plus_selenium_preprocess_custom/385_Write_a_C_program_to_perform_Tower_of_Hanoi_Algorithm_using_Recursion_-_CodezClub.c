#include<stdio.h>

void hanoi_tower(char,char,char,int);
void hanoi_tower(char peg1,char peg2,char peg3,int n)
{
 if(n<=0)
;
 if(n==1)
;
 else
 {
 hanoi_tower(peg1,peg3,peg2,n-1);
 hanoi_tower(peg1,peg2,peg3,1);
 hanoi_tower(peg2,peg1,peg3,n-1);
 }
}
void entry_point(int (*n), int (*temptemp1))
{
;
{
(*temptemp1) = (*n) ;
;
}
 hanoi_tower('x','y','z',(*n));
}
