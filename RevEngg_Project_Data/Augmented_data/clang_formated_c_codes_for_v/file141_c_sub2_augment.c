#include <stdio.h>

int entry_point ( float ( *r )  ,  float ( *temptemp1 )  )   { 
  float circle_area ; 
  float r_squared ; 
   ; 
  r_squared =  ( *r )  *  ( *r )  ; 
  circle_area = 3.14159 * r_squared ; 
   ; 
   { 
     ( *temptemp1 )  = circle_area ; 
     ; 
   } 
  return 0 ; 
 } 
