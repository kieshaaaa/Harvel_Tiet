#include <stdio.h>

int entry_point(int (*size), int (*arr), int (*temptemp1), int (*temptemp2))
{
int k;
int j;
int i;
;
;
 for(i=0; i<(*size); i++)
 {
{
(*temptemp1) = i+1 ;
;
}
 }
 for(i=0; i<(*size); i++)
 {
 for(j=i+1; j<(*size); j++)
 {
 if(arr[i]==arr[j])
 {
 for(k=j; k<(*size); k++)
 {
 arr[k] = arr[k+1];
 }
 (*size)--;
 j--;
 }
 }
 }
;
 for(i=0; i<(*size); i++)
 {
{
(*temptemp2) = arr[i] ;
;
}
 }
 return 0;
}
