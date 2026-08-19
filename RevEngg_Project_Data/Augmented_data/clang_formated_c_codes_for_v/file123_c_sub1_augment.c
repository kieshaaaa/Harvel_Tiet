#include <stdio.h>

int entry_point ( float ( *num1 )  ,  float ( *num2 )  ,  float ( *num3 )  ,  float ( *num4 )  , 
                float ( *temptemp1 )  )   { 
  float divisor ; 
  float outcome ; 
   ; 
  divisor =  ( *num3 )  *  ( *num4 )  ; 
  if  ( divisor != 0 )   { 
    outcome =  (  ( *num1 )  *  ( *num2 )  )  / divisor ; 
     { 
       ( *temptemp1 )  = outcome ; 
       ; 
     } 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
