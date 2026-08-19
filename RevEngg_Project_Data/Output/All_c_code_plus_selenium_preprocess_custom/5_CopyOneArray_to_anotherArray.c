#include<stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2))
{
 int originalArray[10]={1,2,3,4,5,6,7,8,9,10};
int i;
int copyArray[10];
;
 for(i=0;i<10;i++)
 {
{
(*temptemp1) = originalArray[i] ;
;
}
 }
 for(i=0;i<10;i++)
 {
 copyArray[i]=originalArray[i];
 }
 for(i=0;i<10;i++)
 {
{
(*temptemp2) = copyArray[i] ;
;
}
 }
 return 0;
}
