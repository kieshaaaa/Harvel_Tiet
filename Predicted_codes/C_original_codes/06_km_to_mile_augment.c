#include <stdio.h>

int entry_point ( float ( *kilometers )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float miles ; 
   ; 
  miles =  ( *kilometers )  / 1.609344 ; 
   { 
     ( *temptemp1 )  =  ( *kilometers )  ; 
     ( *temptemp2 )  = miles ; 
     ; 
   } 
  return 0 ; 
 } 