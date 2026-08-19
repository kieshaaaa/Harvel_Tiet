#include <math.h>
#include <stdio.h>

int entry_point ( float ( *baseSide )  ,  float ( *temptemp1 )  )   { 
  float sqrtThreeTimesFour ; 
  float totalSurfaceArea ; 
   ; 
  sqrtThreeTimesFour = sqrt ( 3 )  * 4 ; 
  totalSurfaceArea =  ( sqrtThreeTimesFour / 4 )  *  ( *baseSide )  *  ( *baseSide )  ; 
   ; 
   { 
     ( *temptemp1 )  = totalSurfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
