#include <math.h>
#include <stdio.h>

int entry_point ( float ( *semiMajorAxis )  ,  float ( *semiMinorAxis )  , 
                float ( *temptemp1 )  )   { 
  float ellipseCircumference ; 
   ; 
   ; 
  ellipseCircumference = 3.14159265358979323846 *
                          ( 3 *  (  ( *semiMajorAxis )  +  ( *semiMinorAxis )  )  -
                          sqrt (  ( 3 *  ( *semiMajorAxis )  +  ( *semiMinorAxis )  )  *
                                (  ( *semiMajorAxis )  + 3 *  ( *semiMinorAxis )  )  )  )  ; 
   { 
     ( *temptemp1 )  = ellipseCircumference ; 
     ; 
   } 
  return 0 ; 
 } 
