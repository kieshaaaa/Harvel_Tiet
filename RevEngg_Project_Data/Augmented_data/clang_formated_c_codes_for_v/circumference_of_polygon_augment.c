#include <math.h>
#include <stdio.h>

int entry_point ( int ( *numSides )  ,  float ( *sideLength )  ,  float ( *temptemp1 )  )   { 
  float polygonArea ; 
   ; 
   ; 
  polygonArea =  (  ( *numSides )  *  ( *sideLength )  *  ( *sideLength )  )  /
                 ( 4 * tan ( M_PI /  ( *numSides )  )  )  ; 
   { 
     ( *temptemp1 )  = polygonArea ; 
     ; 
   } 
  return 0 ; 
 } 
