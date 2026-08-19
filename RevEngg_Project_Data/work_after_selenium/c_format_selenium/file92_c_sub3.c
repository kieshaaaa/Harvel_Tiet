#include <math.h>
#include <stdio.h>

int entry_point ( float ( *hexSide )  ,  float ( *pyrHeight )  ,  float ( *temptemp1 )  )   { 
  float volumePyramid ; 
  float baseAreaHex ; 
  float constantFactor =  ( 3 * sqrt ( 3 )  )  / 2 ; 
   ; 
   ; 
  baseAreaHex = constantFactor *  ( *hexSide )  *  ( *hexSide )  ; 
  volumePyramid =  ( baseAreaHex *  ( *pyrHeight )  )  / 3 ; 
   ; 
   { 
     ( *temptemp1 )  = volumePyramid ; 
     ; 
   } 
  return 0 ; 
 } 
