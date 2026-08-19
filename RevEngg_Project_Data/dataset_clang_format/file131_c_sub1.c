#include <math.h>
#include <stdio.h>

int entry_point ( float ( *side )  ,  float ( *temptemp1 )  )   { 
  float multiplier ; 
  float area ; 
   ; 
  multiplier = 3 * sqrt ( 3 )  / 2 ; 
  area = multiplier *  ( *side )  *  ( *side )  ; 
   ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   } 
  return 0 ; 
 } 
