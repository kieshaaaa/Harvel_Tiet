#include <stdio.h>

int entry_point ( float ( *centimeters )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float inches_converted ; 
   ; 
  inches_converted =  ( *centimeters )  / 2.54 ; 
   { 
     ( *temptemp1 )  =  ( *centimeters )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = inches_converted ; 
     ; 
   } 
  return 0 ; 
 } 
