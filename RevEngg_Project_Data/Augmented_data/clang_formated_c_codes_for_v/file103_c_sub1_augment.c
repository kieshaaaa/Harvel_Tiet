#include <stdio.h>

int entry_point ( float ( *num )  ,  float ( *avg )  ,  float ( *stdDev )  ,  float ( *temptemp1 )  )   { 
  float zScore ; 
   ; 
   ; 
   ; 
  zScore =  (  ( *num )  -  ( *avg )  )  /  ( *stdDev )  ; 
   ; 
   { 
     ( *temptemp1 )  = zScore ; 
     ; 
   } 
  return 0 ; 
 } 
