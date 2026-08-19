#include <math.h>
#include <stdio.h>

int entry_point ( float ( *side )  ,  float ( *temptemp1 )  )   { 
  float coefficient ; 
  float area ; 
   ; 
  coefficient = 2 *  ( 1 + sqrt ( 2 )  )  ; 
  area =  ( *side )  *  ( *side )  ; 
  area *= coefficient ; 
   ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   } 
  return 0 ; 
 } 
