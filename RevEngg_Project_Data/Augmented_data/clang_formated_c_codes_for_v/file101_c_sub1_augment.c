#include <stdio.h>

int entry_point ( float ( *num1 )  ,  float ( *num2 )  ,  float ( *num3 )  ,  float ( *num4 )  , 
                float ( *temptemp1 )  )   { 
  float sum2 ; 
  float sum1 ; 
  float output ; 
   ; 
  sum1 =  ( *num1 )  +  ( *num2 )  ; 
  sum2 =  ( *num3 )  +  ( *num4 )  ; 
  if  ( sum2 == 0 )   { 
     ; 
    return -1 ; 
   } 
  output = sum1 / sum2 ; 
   { 
     ( *temptemp1 )  = output ; 
     ; 
   } 
  return 0 ; 
 } 
