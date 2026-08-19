#include <stdio.h>

int entry_point ( float ( *real1 )  ,  float ( *imag1 )  ,  float ( *real2 )  ,  float ( *imag2 )  , 
                float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float imagSum ; 
  float realSum ; 
   ; 
   ; 
  realSum =  ( *real1 )  +  ( *real2 )  ; 
  imagSum =  ( *imag1 )  +  ( *imag2 )  ; 
   { 
     ( *temptemp1 )  = realSum ; 
     ( *temptemp2 )  = imagSum ; 
     ; 
   } 
  return 0 ; 
 } 
