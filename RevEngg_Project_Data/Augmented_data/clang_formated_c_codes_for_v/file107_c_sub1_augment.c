#include <stdio.h>

int entry_point ( float ( *millimeters )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float inches ; 
   ; 
  inches =  ( *millimeters )  / 25.4 ; 
   { 
     ( *temptemp1 )  =  ( *millimeters )  ; 
     ( *temptemp2 )  = inches ; 
     ; 
   } 
  return 0 ; 
 } 
