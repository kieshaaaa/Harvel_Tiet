#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *temptemp1 )  )   { 
  float PI = 3.14159 ; 
   ; 
  float volume =  ( 4.0 / 3.0 )  * PI *  ( *radius )  *  ( *radius )  *  ( *radius )  ; 
   ; 
   { 
     ( *temptemp1 )  = volume ; 
     ; 
   } 
  return 0 ; 
 } 
