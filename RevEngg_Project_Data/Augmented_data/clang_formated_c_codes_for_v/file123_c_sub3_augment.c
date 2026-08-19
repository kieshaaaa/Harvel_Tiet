#include <stdio.h>

int entry_point ( float ( *num1 )  ,  float ( *num2 )  ,  float ( *num3 )  ,  float ( *num4 )  , 
                float ( *temptemp1 )  )   { 
  float output ; 
   ; 
  if  (  ( *num3 )  == 0 ||  ( *num4 )  == 0 )   { 
     ; 
   }  else  { 
    output =  (  ( *num1 )  *  ( *num2 )  )  /  (  ( *num3 )  *  ( *num4 )  )  ; 
     { 
       ( *temptemp1 )  = output ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
