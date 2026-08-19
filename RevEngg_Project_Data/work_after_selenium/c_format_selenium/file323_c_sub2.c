#include <math.h>
#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *temptemp1 )  )   { 
   ; 
  float radiusSquared =  ( *radius )  *  ( *radius )  ; 
  float surfaceArea = 4 * M_PI * radiusSquared ; 
   ; 
   { 
     ( *temptemp1 )  = surfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
