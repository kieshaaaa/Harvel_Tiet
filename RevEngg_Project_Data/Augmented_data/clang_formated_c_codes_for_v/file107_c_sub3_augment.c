#include <stdio.h>

int entry_point ( float ( *millimeters )  ,  float ( *temptemp1 )  )   { 
  float inches ; 
  float conversionFactor = 25.4 ; 
   ; 
  inches =  ( *millimeters )  / conversionFactor ; 
   { 
     ( *temptemp1 )  = inches ; 
     ; 
   } 
  return 0 ; 
 } 
