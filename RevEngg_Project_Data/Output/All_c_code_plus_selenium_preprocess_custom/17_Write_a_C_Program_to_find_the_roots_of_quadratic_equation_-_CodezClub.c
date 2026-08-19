#include<stdio.h>
#include<math.h>

int entry_point(int (*A), int (*B), int (*C), float (*temptemp1), float (*temptemp2), float (*temptemp3))
{
float x2;
float x1;
float deno;
float disc;
;
;
;
 disc=((*B)*(*B))-(4*(*A)*(*C));
 deno = 2 * (*A);
 if(disc > 0)
 {
;
 x1 = (-(*B)/deno)+(sqrt(disc)/deno);
 x2 = (-(*B)/deno)-(sqrt(disc)/deno);
{
(*temptemp1) = x1 ;
(*temptemp2) = x2 ;
;
}
 }
 else if(disc == 0)
 {
;
 x1 = -(*B)/deno;
{
(*temptemp3) = x1 ;
;
}
 }
 else
;
 return 0;
}
