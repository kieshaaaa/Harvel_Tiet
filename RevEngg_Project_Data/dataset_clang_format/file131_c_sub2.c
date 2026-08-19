#include <math.h>
#include <stdio.h>

int entry_point ( float ( *side )  ,  float ( *temptemp1 )  )   { 
  float constantPart ; 
  float root3 ; 
  float area ; 
   ; 
  root3 = sqrt ( 3 )  ; 
  constantPart = 3 * root3 / 2 ; 
  area = constantPart *  ( *side )  *  ( *side )  ; 
   ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   } 
  return 0 ; 
 } 
