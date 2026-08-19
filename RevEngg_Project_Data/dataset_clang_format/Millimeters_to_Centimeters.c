#include <stdio.h>

int entry_point ( float ( *millimeters )  ,  float ( *temptemp1 )  )   { 
  float centimeters ; 
   ; 
  centimeters =  ( *millimeters )  / 10.0 ; 
   { 
     ( *temptemp1 )  = centimeters ; 
     ; 
   } 
  return 0 ; 
 } 
