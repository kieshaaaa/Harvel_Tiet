#include <math.h>
#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *temptemp1 )  )   { 
  float fourThirds ; 
  float piValue ; 
  float volume ; 
   ; 
  piValue = M_PI ; 
  fourThirds = 4.0f / 3.0f ; 
  volume = fourThirds * piValue * pow (  ( *radius )  ,  3 )  ; 
   ; 
   { 
     ( *temptemp1 )  = volume ; 
     ; 
   } 
  return 0 ; 
 } 
