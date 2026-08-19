#include <stdio.h>

int entry_point(int (*n))
{
int j;
int i;
;
 for(i=(*n)/2; i<=(*n); i+=2)
 {
 for(j=1; j<(*n)-i; j+=2)
 {
;
 }
 for(j=1; j<=i; j++)
 {
;
 }
 for(j=1; j<=(*n)-i; j++)
 {
;
 }
 for(j=1; j<=i; j++)
 {
;
 }
;
 }
 for(i=(*n); i>=1; i--)
 {
 for(j=i; j<(*n); j++)
 {
;
 }
 for(j=1; j<=(i*2)-1; j++)
 {
;
 }
;
 }
 return 0;
}
