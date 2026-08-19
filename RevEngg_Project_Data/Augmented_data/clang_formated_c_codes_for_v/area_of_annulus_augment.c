#include <stdio.h>

int entry_point ( float ( *outerRad )  ,  float ( *innerRad )  ,  float ( *temptemp1 )  )   { 
  float annulusArea ; 
   ; 
   ; 
  annulusArea =
      3.14159 *  (  ( *outerRad )  *  ( *outerRad )  -  ( *innerRad )  *  ( *innerRad )  )  ; 
   { 
     ( *temptemp1 )  = annulusArea ; 
     ; 
   } 
  return 0 ; 
 } 
