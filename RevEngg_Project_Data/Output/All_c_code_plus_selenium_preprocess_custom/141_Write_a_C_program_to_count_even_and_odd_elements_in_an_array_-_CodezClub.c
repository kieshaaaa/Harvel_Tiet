#include <stdio.h>

int entry_point(int (*N), int (*arr), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4))
{
int odd;
int even;
int i;
;
{
(*temptemp1) = (*N) ;
;
}
 for(i=0; i<(*N); i++)
 {
{
(*temptemp2) = i+1 ;
;
}
 }
 even = 0;
 odd = 0;
 for(i=0; i<(*N); i++)
 {
 if(arr[i]%2 == 0)
 {
 even++;
 }
 else
 {
 odd++;
 }
 }
{
(*temptemp3) = even ;
;
}
{
(*temptemp4) = odd ;
;
}
 return 0;
}
