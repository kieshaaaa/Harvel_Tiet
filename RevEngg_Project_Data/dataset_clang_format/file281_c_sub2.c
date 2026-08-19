#include <stdio.h>

int entry_point ( float ( *meters )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float yards ; 
  float conversionFactor = 1.09 ; 
   ; 
  yards =  ( *meters )  * conversionFactor ; 
   { 
     ( *temptemp1 )  =  ( *meters )  ; 
     ( *temptemp2 )  = yards ; 
     ; 
   } 
  return 0 ; 
 } 
