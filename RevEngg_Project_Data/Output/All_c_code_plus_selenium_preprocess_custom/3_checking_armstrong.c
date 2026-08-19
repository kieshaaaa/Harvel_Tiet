#include<stdio.h>

int entry_point(int (*n))
{
int sum=0;
int temp;
int r;
;
 temp = (*n);
 while((*n)!=0){
 r = (*n) % 10;
 sum = sum + (r * r * r);
 (*n) = (*n) / 10;
 }
 if(temp == sum)
 {
;
 }
 else{
;
 }
 return 0;
}
