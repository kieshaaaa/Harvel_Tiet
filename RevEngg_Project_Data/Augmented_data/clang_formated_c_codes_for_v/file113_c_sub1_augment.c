#include <stdio.h>

int entry_point ( float ( *r )  ,  float ( *h )  ,  float ( *temptemp1 )  )   { 
  float totalArea ; 
  float areaSide ; 
  float areaCircle ; 
   ; 
   ; 
  areaCircle = 3.14159 *  ( *r )  *  ( *r )  ; 
  areaSide = 2 * 3.14159 *  ( *r )  *  ( *h )  ; 
  totalArea = 2 * areaCircle + areaSide ; 
   { 
     ( *temptemp1 )  = totalArea ; 
     ; 
   } 
  return 0 ; 
 } 
