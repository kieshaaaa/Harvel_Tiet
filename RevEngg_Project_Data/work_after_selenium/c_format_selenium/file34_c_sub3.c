#include <math.h>
#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *temptemp1 )  )   { 
  float pi = 3.14159 ; 
  float surfaceArea ; 
  float squareRadius ; 
   ; 
  squareRadius =  ( *radius )  *  ( *radius )  ; 
  surfaceArea = 4 * pi * squareRadius ; 
   ; 
   { 
     ( *temptemp1 )  = surfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
