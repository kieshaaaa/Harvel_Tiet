#include <stdio.h>

int entry_point ( float ( *degrees )  ,  float ( *temptemp1 )  )   { 
   ; 
  float radians =  ( *degrees )  *  ( 3.14f / 180.0f )  ; 
   ; 
   { 
     ( *temptemp1 )  = radians ; 
     ; 
   } 
  return 0 ; 
 } 
