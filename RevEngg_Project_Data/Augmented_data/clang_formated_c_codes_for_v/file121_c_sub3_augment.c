#include <math.h>
#include <stdio.h>

int entry_point ( float ( *sideLength )  ,  float ( *height )  ,  float ( *temptemp1 )  )   { 
  float volume ; 
  float sqrt3Over4 = sqrt ( 3 )  / 4.0f ; 
  float oneThird = 1.0f / 3.0f ; 
   ; 
   ; 
  volume = sqrt3Over4 *  ( *sideLength )  *  ( *sideLength )  *  ( *height )  * oneThird ; 
   { 
     ( *temptemp1 )  = volume ; 
     ; 
   } 
  return 0 ; 
 } 
