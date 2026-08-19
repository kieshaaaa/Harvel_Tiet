#include <math.h>
#include <stdio.h>

int entry_point ( float ( *s )  ,  float ( *sl )  ,  float ( *temptemp1 )  )   { 
  float surfaceArea ; 
  float lateralArea ; 
  float baseArea ; 
  float pi = 3.14159 ; 
   ; 
   ; 
  baseArea =  ( 3 * sqrt ( 3 )  / 2 )  *  ( *s )  *  ( *s )  ; 
  lateralArea = 6 *  (  ( *s )  *  ( *sl )  )  / 2 ; 
  surfaceArea = baseArea + lateralArea ; 
   { 
     ( *temptemp1 )  = surfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
