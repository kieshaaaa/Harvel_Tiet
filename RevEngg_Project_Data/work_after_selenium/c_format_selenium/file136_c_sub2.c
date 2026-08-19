#include <math.h>
#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *height )  ,  float ( *temptemp1 )  )   { 
  float area ; 
   ; 
   ; 
  area = 3.14159 *  ( *radius )  *
          (  ( *radius )  + sqrt (  ( *radius )  *  ( *radius )  +  ( *height )  *  ( *height )  )  )  ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   } 
  return 0 ; 
 } 
