#include <stdio.h>

int entry_point ( float ( *temptemp1 )  )   { 
  float length = 5.0 ; 
  float width = 3.0 ; 
  float height = 2.0 ; 
  float totalEdgeLength ; 
  totalEdgeLength = 4 *  ( length + width + height )  ; 
   ; 
   { 
     ( *temptemp1 )  = totalEdgeLength ; 
     ; 
   } 
  return 0 ; 
 } 
