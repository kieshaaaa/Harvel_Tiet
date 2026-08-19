#include <stdio.h>

int entry_point ( float ( *length_mm )  ,  float ( *temptemp1 )  )   { 
  float length_inches ; 
   ; 
  length_inches =  ( *length_mm )  / 25.4 ; 
   { 
     ( *temptemp1 )  = length_inches ; 
     ; 
   } 
  return 0 ; 
 } 
