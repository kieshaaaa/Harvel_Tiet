#include <stdio.h>

int entry_point ( float ( *num1 )  ,  float ( *num2 )  ,  float ( *num3 )  ,  float ( *num4 )  , 
                float ( *temptemp1 )  )   { 
  float divisionResult ; 
   ; 
  if  (  ( *num3 )  +  ( *num4 )  != 0 )   { 
    divisionResult =  (  ( *num1 )  +  ( *num2 )  )  /  (  ( *num3 )  +  ( *num4 )  )  ; 
     { 
       ( *temptemp1 )  = divisionResult ; 
       ; 
     } 
   }  else  { 
     ; 
    return -1 ; 
   } 
  return 0 ; 
 } 
