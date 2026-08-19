#include <stdio.h>

int entry_point ( float ( *length_cm )  ,  float ( *temptemp1 )  )   { 
  float length_inches ; 
   ; 
  length_inches =  ( *length_cm )  / 2.54 ; 
   ; 
   { 
     ( *temptemp1 )  = length_inches ; 
     ; 
   } 
  return 0 ; 
 } 
