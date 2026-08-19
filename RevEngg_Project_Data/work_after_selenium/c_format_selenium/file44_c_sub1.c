#include <stdio.h>

int entry_point ( float ( *speedMPS )  ,  float ( *temptemp1 )  )   { 
  float speedKnots ; 
   ; 
  speedKnots =  ( *speedMPS )  * 1.94384 ; 
   ; 
   { 
     ( *temptemp1 )  = speedKnots ; 
     ; 
   }  ; 
  return 0 ; 
 } 
