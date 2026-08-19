#include <stdio.h>

int entry_point ( float ( *degrees )  ,  float ( *temptemp1 )  )   { 
  float gradians ; 
   ; 
  gradians =  ( *degrees )  *  ( 200.0 / 180.0 )  ; 
   { 
     ( *temptemp1 )  = gradians ; 
     ; 
   } 
  return 0 ; 
 } 
