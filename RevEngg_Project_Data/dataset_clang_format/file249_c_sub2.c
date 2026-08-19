#include <stdio.h>

int entry_point ( float ( *baseRadius )  ,  float ( *cylinderHeight )  ,  float ( *temptemp1 )  )   { 
  float baseArea ; 
  float cylinderVolume ; 
   ; 
   ; 
  baseArea = 3.14159 *  ( *baseRadius )  *  ( *baseRadius )  ; 
  cylinderVolume = baseArea *  ( *cylinderHeight )  ; 
   ; 
   { 
     ( *temptemp1 )  = cylinderVolume ; 
     ; 
   } 
  return 0 ; 
 } 
