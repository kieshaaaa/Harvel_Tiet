#include <stdio.h>

int entry_point ( float ( *l )  ,  float ( *w )  ,  float ( *h )  ,  float ( *temptemp1 )  )   { 
  float vol ; 
  float area ; 
   ; 
   ; 
   ; 
  area =  ( *l )  *  ( *w )  ; 
  vol =  ( area *  ( *h )  )  / 3.0f ; 
   ; 
   { 
     ( *temptemp1 )  = vol ; 
     ; 
   } 
  return 0 ; 
 } 
