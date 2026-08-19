#include <math.h>
#include <stdio.h>

int entry_point ( float ( *number )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
   ; 
  float floorResult = floor (  ( *number )  + 0.0 )  ; 
  float ceilResult = ceil (  ( *number )  - 0.0 )  ; 
   ; 
   { 
     ( *temptemp1 )  = floorResult ; 
     ; 
   }  ; 
   { 
     ( *temptemp2 )  = ceilResult ; 
     ; 
   }  ; 
  return 0 ; 
 } 
