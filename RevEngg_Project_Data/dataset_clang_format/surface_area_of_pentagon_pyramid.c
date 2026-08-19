#include <math.h>
#include <stdio.h>

int entry_point ( float ( *sideLength )  ,  float ( *slantHeight )  ,  float ( *temptemp1 )  )   { 
  float surfaceArea ; 
  float lateralArea ; 
  float baseArea ; 
   ; 
   ; 
  baseArea =  ( 5 *  ( *sideLength )  *  ( *sideLength )  )  /  ( 4 * tan ( M_PI / 5 )  )  ; 
  lateralArea =  ( 5 *  ( *sideLength )  *  ( *slantHeight )  )  / 2 ; 
  surfaceArea = baseArea + lateralArea ; 
   { 
     ( *temptemp1 )  = surfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
