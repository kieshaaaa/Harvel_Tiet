#include <stdio.h>

int countBit(int);
int entry_point(int (*num), int (*temptemp1))
{
;
{
(*temptemp1) = countBit((*num)) ;
;
}
 return 0;
}
int countBit(int n)
{
 int count=0,i;
 if(n==0) return 0;
 for(i=0; i< 32; i++)
 {
 if( (1 << i) & n)
 count=i;
 }
 return ++count;
}
