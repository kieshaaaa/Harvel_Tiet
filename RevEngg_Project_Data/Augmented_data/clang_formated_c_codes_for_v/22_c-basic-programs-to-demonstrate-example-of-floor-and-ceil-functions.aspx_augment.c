#include <math.h>
#include <stdio.h>

int entry_point ( float ( *num )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float ceilNum ; 
  float floorNum ; 
   ; 
  floorNum = floor (  ( *num )  )  ; 
  ceilNum = ceil (  ( *num )  )  ; 
   { 
     ( *temptemp1 )  = floorNum ; 
     ( *temptemp2 )  = ceilNum ; 
     ; 
   } 
  return 0 ; 
 } 
