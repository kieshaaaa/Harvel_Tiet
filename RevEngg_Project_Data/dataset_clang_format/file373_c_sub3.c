#include <stdio.h>

int entry_point ( float ( *outerRadius )  ,  float ( *innerRadius )  ,  float ( *temptemp1 )  )   { 
  float diffSquare ; 
  float area ; 
   ; 
   ; 
  diffSquare =
       ( *outerRadius )  *  ( *outerRadius )  -  ( *innerRadius )  *  ( *innerRadius )  ; 
  area = diffSquare * 3.14159 ; 
   ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   } 
  return 0 ; 
 } 
