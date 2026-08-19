#include <stdio.h>

int entry_point ( float ( *value )  ,  float ( *mean )  ,  float ( *stdDeviation )  , 
                float ( *temptemp1 )  )   { 
  float zScore ; 
   ; 
   ; 
   ; 
  zScore =  (  ( *value )  -  ( *mean )  )  /  ( *stdDeviation )  ; 
   ; 
   { 
     ( *temptemp1 )  = zScore ; 
     ; 
   } 
  return 0 ; 
 } 
