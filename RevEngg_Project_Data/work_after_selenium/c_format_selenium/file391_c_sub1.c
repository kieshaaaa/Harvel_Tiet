#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float circum ; 
  float area ; 
   ; 
  area = 3.142 *  ( *radius )  *  ( *radius )  ; 
  circum = 2 * 3.142 *  ( *radius )  ; 
   ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   }  ; 
   { 
     ( *temptemp2 )  = circum ; 
     ; 
   } 
  return 0 ; 
 } 
