#include <math.h>
#include <stdio.h>

int entry_point ( float ( *sideLength )  ,  float ( *pyramidHeight )  ,  float ( *temptemp1 )  )   { 
  float pyramidVolume ; 
  float hexagonArea ; 
  float pi = 3.14159 ; 
   ; 
   ; 
  hexagonArea =  ( 3 * sqrt ( 3 )  / 2 )  *  ( *sideLength )  *  ( *sideLength )  ; 
  pyramidVolume = hexagonArea *  ( *pyramidHeight )  / 3 ; 
   ; 
   { 
     ( *temptemp1 )  = pyramidVolume ; 
     ; 
   } 
  return 0 ; 
 } 
