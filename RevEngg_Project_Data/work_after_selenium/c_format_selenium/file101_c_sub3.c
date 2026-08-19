#include <stdio.h>

int entry_point ( float ( *x1 )  ,  float ( *x2 )  ,  float ( *x3 )  ,  float ( *x4 )  , 
                float ( *temptemp1 )  )   { 
  float calcResult ; 
   ; 
  if  (  (  ( *x3 )  +  ( *x4 )  )  == 0 )   { 
     ; 
    return -1 ; 
   }  else  { 
    calcResult =  (  ( *x1 )  +  ( *x2 )  )  /  (  ( *x3 )  +  ( *x4 )  )  ; 
     { 
       ( *temptemp1 )  = calcResult ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
