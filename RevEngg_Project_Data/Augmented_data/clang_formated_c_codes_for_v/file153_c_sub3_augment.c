#include <stdio.h>

int entry_point ( float ( *fahrenheit )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float celsius ; 
   ; 
  celsius =  (  ( *fahrenheit )  - 32 )  / 1.8 ; 
   { 
     ( *temptemp1 )  =  ( *fahrenheit )  ; 
     ( *temptemp2 )  = celsius ; 
     ; 
   } 
  return 0 ; 
 } 
