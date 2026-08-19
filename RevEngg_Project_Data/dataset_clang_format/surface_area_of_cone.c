#include <math.h>
#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *height )  ,  float ( *temptemp1 )  )   { 
  float surfaceArea ; 
   ; 
   ; 
  float slantHeight = sqrt (  ( *height )  *  ( *height )  +  ( *radius )  *  ( *radius )  )  ; 
  surfaceArea = 3.14159 *  ( *radius )  *  (  ( *radius )  + slantHeight )  ; 
   { 
     ( *temptemp1 )  = surfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
