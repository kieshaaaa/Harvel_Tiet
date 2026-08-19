#include<stdio.h>

int entry_point(int (*n), int (*array), int (*search), int (*temptemp1), int (*temptemp2), int (*temptemp3))
{
int count = 0;
int i;
;
 int array[(*n)];
;
 for(i=0; i<(*n); i++)
 {
 }
;
 for(i=0; i<(*n); i++)
 {
 if((*search) == array[i])
 {
{
(*temptemp1) = i ;
;
}
 count++;
 }
 }
 if(count == 0)
 {
;
 }
 else
 {
{
(*temptemp2) = (*search) ;
(*temptemp3) = count ;
;
}
 }
 return 0;
}
