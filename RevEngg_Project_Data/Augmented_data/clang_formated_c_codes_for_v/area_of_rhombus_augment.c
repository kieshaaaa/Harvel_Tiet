#include <stdio.h>

int entry_point ( float ( *diagonal1 )  ,  float ( *diagonal2 )  ,  float ( *temptemp1 )  )   { 
  float areaOfRhombus ; 
   ; 
   ; 
  areaOfRhombus =  (  ( *diagonal1 )  *  ( *diagonal2 )  )  / 2 ; 
   { 
     ( *temptemp1 )  = areaOfRhombus ; 
     ; 
   } 
  return 0 ; 
 } 
