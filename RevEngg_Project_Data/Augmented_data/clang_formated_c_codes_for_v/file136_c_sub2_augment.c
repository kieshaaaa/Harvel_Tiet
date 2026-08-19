#include <math.h>
#include <stdio.h>

int entry_point ( float ( *rad )  ,  float ( *h )  ,  float ( *temptemp1 )  )   { 
  float surfaceArea ; 
   ; 
   ; 
  surfaceArea =
      3.14159 *  ( *rad )  *  (  ( *rad )  + sqrt (  ( *rad )  *  ( *rad )  +  ( *h )  *  ( *h )  )  )  ; 
   { 
     ( *temptemp1 )  = surfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
