#include <math.h>
#include <stdio.h>

int entry_point ( float ( *side )  ,  float ( *temptemp1 )  )   { 
  float sqrt5 ; 
  float goldenRatio ; 
  float area ; 
   ; 
  sqrt5 = sqrt ( 5 )  ; 
  goldenRatio =  ( 1 + sqrt5 )  / 2 ; 
  area =  ( 5 *  ( *side )  *  ( *side )  )  /  ( 4 * tan ( M_PI / 5 )  )  ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   } 
  return 0 ; 
 } 
