#include <stdio.h>

int entry_point ( float ( *l )  ,  float ( *w )  ,  float ( *h )  ,  float ( *temptemp1 )  )   { 
  float v ; 
   ; 
  v =  (  ( *l )  *  ( *w )  *  ( *h )  )  / 3.0f ; 
   { 
     ( *temptemp1 )  = v ; 
     ; 
   } 
  return 0 ; 
 } 
