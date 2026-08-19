#include <math.h>
#include <stdio.h>

int entry_point ( float ( *edge )  ,  float ( *height )  ,  float ( *temptemp1 )  )   { 
  float volOfPyramid ; 
  float areaOfBase ; 
  float root3 = sqrt ( 3 )  ; 
   ; 
   ; 
  areaOfBase =  (  ( 3 * root3 )  / 2 )  *  (  ( *edge )  *  ( *edge )  )  ; 
  volOfPyramid = areaOfBase *  ( *height )  / 3 ; 
   ; 
   { 
     ( *temptemp1 )  = volOfPyramid ; 
     ; 
   } 
  return 0 ; 
 } 
