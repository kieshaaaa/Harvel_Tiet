#include <stdio.h>

int entry_point ( float ( *speedInMetersPerSecond )  ,  float ( *temptemp1 )  )   { 
  float conversionFactor ; 
  float speedInKnots ; 
  conversionFactor = 1.94384 ; 
   ; 
  speedInKnots =  ( *speedInMetersPerSecond )  * conversionFactor ; 
   ; 
   { 
     ( *temptemp1 )  = speedInKnots ; 
     ; 
   }  ; 
  return 0 ; 
 } 
