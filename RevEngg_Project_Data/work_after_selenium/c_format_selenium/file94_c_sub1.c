#include <stdio.h>

int entry_point ( float ( *yards )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float miles ; 
  float conversionFactor = 1760.0 ; 
   ; 
  miles =  ( *yards )  / conversionFactor ; 
   { 
     ( *temptemp1 )  =  ( *yards )  ; 
     ( *temptemp2 )  = miles ; 
     ; 
   } 
  return 0 ; 
 } 
