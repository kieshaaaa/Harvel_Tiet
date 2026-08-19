#include <stdio.h>

int entry_point ( float ( *fahrenheit )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float conversionFactor ; 
  float celsius ; 
   ; 
  conversionFactor = 5.0 / 9.0 ; 
  celsius =  (  ( *fahrenheit )  - 32 )  * conversionFactor ; 
   { 
     ( *temptemp1 )  =  ( *fahrenheit )  ; 
     ( *temptemp2 )  = celsius ; 
     ; 
   } 
  return 0 ; 
 } 
