#include <stdio.h>

int entry_point ( float ( *r )  ,  float ( *h )  ,  float ( *temptemp1 )  )   { 
  float areaTotal ; 
  float areaLateral ; 
  float areaBase ; 
   ; 
   ; 
  areaBase = 3.14159 *  ( *r )  *  ( *r )  ; 
  areaLateral = 2 * 3.14159 *  ( *r )  *  ( *h )  ; 
  areaTotal = 2 * areaBase + areaLateral ; 
   { 
     ( *temptemp1 )  = areaTotal ; 
     ; 
   } 
  return 0 ; 
 } 
