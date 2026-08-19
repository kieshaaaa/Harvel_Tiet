#include <math.h>
#include <stdio.h>

int entry_point ( float ( *principal )  ,  float ( *rate )  ,  float ( *year )  , 
                float ( *temptemp1 )  )   { 
  float ci ; 
  float ratePlusOne ; 
   ; 
   ; 
   ; 
  ratePlusOne = 1 +  ( *rate )  / 100 ; 
  ci =  ( *principal )  *  ( pow ( ratePlusOne ,   ( *year )  )  - 1 )  ; 
   { 
     ( *temptemp1 )  = ci ; 
     ; 
   } 
  return 0 ; 
 } 
