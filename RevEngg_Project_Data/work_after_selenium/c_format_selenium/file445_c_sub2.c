#include <math.h>
#include <stdio.h>

int entry_point ( float ( *principal )  ,  float ( *rate )  ,  float ( *time )  , 
                float ( *temptemp1 )  )   { 
  float ci ; 
   ; 
   ; 
   ; 
  float amount =  ( *principal )  * pow (  ( 1 +  ( *rate )  / 100 )  ,   ( *time )  )  ; 
  ci = amount -  ( *principal )  ; 
   { 
     ( *temptemp1 )  = ci ; 
     ; 
   } 
  return 0 ; 
 } 
