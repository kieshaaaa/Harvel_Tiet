#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float piValue ; 
  float circum ; 
  float area ; 
  piValue = 3.142 ; 
   ; 
  area = piValue *  ( *radius )  *  ( *radius )  ; 
  circum = 2 * piValue *  ( *radius )  ; 
  float finalArea = area ; 
  float finalCircum = circum ; 
   ; 
   { 
     ( *temptemp1 )  = finalArea ; 
     ; 
   }  ; 
   { 
     ( *temptemp2 )  = finalCircum ; 
     ; 
   } 
  return 0 ; 
 } 
