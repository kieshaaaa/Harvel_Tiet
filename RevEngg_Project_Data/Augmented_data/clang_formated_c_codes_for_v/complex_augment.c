#include <stdio.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *d )  ,  float ( *temptemp1 )  , 
                float ( *temptemp2 )  )   { 
  float sumImag ; 
  float sumReal ; 
   ; 
   ; 
  sumReal =  ( *a )  +  ( *c )  ; 
  sumImag =  ( *b )  +  ( *d )  ; 
   { 
     ( *temptemp1 )  = sumReal ; 
     ( *temptemp2 )  = sumImag ; 
     ; 
   } 
  return 0 ; 
 } 
