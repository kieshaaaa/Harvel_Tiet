#include <math.h>
#include <stdio.h>

int entry_point ( int ( *numSides )  ,  float ( *sideLength )  ,  float ( *temptemp1 )  )   { 
  float polygonArea ; 
  float pi = 3.141592653589793 ; 
   ; 
   ; 
  polygonArea =  (  ( *numSides )  *  ( *sideLength )  *  ( *sideLength )  )  /
                 ( 4 * tan ( pi /  ( *numSides )  )  )  ; 
   { 
     ( *temptemp1 )  = polygonArea ; 
     ; 
   } 
  return 0 ; 
 } 
