#include <stdio.h>

int entry_point(int (*size), int (*arr), int (*temptemp1), int (*temptemp2), int (*temptemp3))
{
int freq[100];
int count;
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
 freq[i] = -1;
 }
 for(i=0; i<(*size); i++)
 {
 count = 1;
 for(j=i+1; j<(*size); j++)
 {
 if(arr[i]==arr[j])
 {
 count++;
 freq[j] = 0;
 }
 }
 if(freq[i]!=0)
 {
 freq[i] = count;
 }
 }
;
 for(i=0; i<(*size); i++)
 {
 if(freq[i]!=0)
 {
{
(*temptemp2) = arr[i] ;
(*temptemp3) = freq[i] ;
;
}
 }
 }
 return 0;
}
