#include <stdio.h>

int entry_point ( float ( *num1 )  ,  float ( *num2 )  ,  float ( *num3 )  ,  float ( *num4 )  , 
                float ( *temptemp1 )  )   { 
  float finalResult ; 
   ; 
  finalResult =  (  ( *num1 )  +  ( *num2 )  )  *  (  ( *num3 )  +  ( *num4 )  )  ; 
   { 
     ( *temptemp1 )  = finalResult ; 
     ; 
   } 
  return 0 ; 
 } 
