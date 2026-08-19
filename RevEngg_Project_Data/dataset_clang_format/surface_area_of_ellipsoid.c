#include <math.h>
#include <stdio.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *temptemp1 )  )   { 
  float surfaceArea ; 
   ; 
   ; 
   ; 
  surfaceArea = 4 * 3.14159265358979323846 *
                pow (  ( pow (  ( *a )  *  ( *b )  ,  1.6 )  + pow (  ( *a )  *  ( *c )  ,  1.6 )  +
                     pow (  ( *b )  *  ( *c )  ,  1.6 )  )  /
                        3 , 
                    1 / 1.6 )  ; 
   { 
     ( *temptemp1 )  = surfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
