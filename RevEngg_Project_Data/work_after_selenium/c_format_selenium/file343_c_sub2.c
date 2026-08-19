#include <stdio.h>

int entry_point ( float ( *baseLength )  ,  float ( *sideLength )  ,  float ( *temptemp1 )  )   { 
  float totalSideLength ; 
  float totalBaseLength ; 
  float perimeter ; 
   ; 
   ; 
  totalBaseLength =  ( *baseLength )  * 2 ; 
  totalSideLength =  ( *sideLength )  * 2 ; 
  perimeter = totalBaseLength + totalSideLength ; 
   { 
     ( *temptemp1 )  = perimeter ; 
     ; 
   } 
  return 0 ; 
 } 
