#include <math.h>
#include <stdio.h>

int entry_point ( float ( *principal )  ,  float ( *rate )  ,  float ( *year )  , 
                float ( *temptemp1 )  )   { 
  float ci ; 
   ; 
   ; 
   ; 
  ci =  ( *principal )  *  (  ( pow (  ( 1 +  ( *rate )  / 100 )  ,   ( *year )  )  - 1 )  )  ; 
   { 
     ( *temptemp1 )  = ci ; 
     ; 
   } 
  return 0 ; 
 } 
