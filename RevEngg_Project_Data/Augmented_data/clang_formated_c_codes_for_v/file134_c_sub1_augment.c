#include <stdio.h>

int entry_point ( float ( *majorRadius )  ,  float ( *minorRadius )  ,  float ( *temptemp1 )  )   { 
  float piSquared ; 
  float surfaceArea ; 
   ; 
   ; 
  piSquared = 3.14159265358979323846 * 3.14159265358979323846 ; 
  surfaceArea = 4 * piSquared *  ( *majorRadius )  *  ( *minorRadius )  ; 
   ; 
   { 
     ( *temptemp1 )  = surfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
