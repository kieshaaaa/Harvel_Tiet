#include <stdio.h>

int entry_point ( float ( *fah )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float cel ; 
   ; 
  cel =  (  ( *fah )  - 32 )  / 1.8 ; 
   { 
     ( *temptemp1 )  =  ( *fah )  ; 
     ( *temptemp2 )  = cel ; 
     ; 
   } 
  return 0 ; 
 } 
