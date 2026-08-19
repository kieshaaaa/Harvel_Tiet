#include <stdio.h>

int entry_point ( float ( *gradians )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float PI = 3.14159265 ; 
  float radians ; 
   ; 
  radians =  ( *gradians )  *  ( PI / 200.0 )  ; 
   { 
     ( *temptemp1 )  =  ( *gradians )  ; 
     ( *temptemp2 )  = radians ; 
     ; 
   } 
  return 0 ; 
 } 
