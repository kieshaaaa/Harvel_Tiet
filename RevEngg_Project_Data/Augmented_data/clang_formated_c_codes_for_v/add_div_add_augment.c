#include <stdio.h>

int entry_point ( float ( *num1 )  ,  float ( *num2 )  ,  float ( *num3 )  ,  float ( *num4 )  , 
                float ( *temptemp1 )  )   { 
  float outcome ; 
   ; 
  if  (  ( *num3 )  +  ( *num4 )  == 0 )   { 
     ; 
    return -1 ; 
   } 
  outcome =  (  ( *num1 )  +  ( *num2 )  )  /  (  ( *num3 )  +  ( *num4 )  )  ; 
   { 
     ( *temptemp1 )  = outcome ; 
     ; 
   } 
  return 0 ; 
 } 
