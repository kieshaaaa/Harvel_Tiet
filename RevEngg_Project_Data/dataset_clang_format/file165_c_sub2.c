#include <stdio.h>

int entry_point ( float ( *gradians )  ,  float ( *temptemp1 )  )   { 
  float conversionFactor ; 
  float degrees ; 
  conversionFactor = 180.0 / 200.0 ; 
   ; 
  degrees =  ( *gradians )  * conversionFactor ; 
   ; 
   { 
     ( *temptemp1 )  = degrees ; 
     ; 
   } 
  return 0 ; 
 } 
