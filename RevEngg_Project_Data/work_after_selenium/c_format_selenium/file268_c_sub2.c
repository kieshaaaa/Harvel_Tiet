#include <math.h>
#include <stdio.h>

int entry_point ( float ( *length )  ,  float ( *high )  ,  float ( *temptemp1 )  )   { 
  float volumePyramid ; 
  float base ; 
  float piValue = 3.14159 ; 
   ; 
   ; 
  float tanValue = tan ( piValue / 5.0f )  ; 
  base =  ( 5.0f / 4.0f )  *  (  ( *length )  *  ( *length )  )  / tanValue ; 
  volumePyramid = base *  ( *high )  / 3.0f ; 
   ; 
   { 
     ( *temptemp1 )  = volumePyramid ; 
     ; 
   } 
  return 0 ; 
 } 
