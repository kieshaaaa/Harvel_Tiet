#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *temptemp1 )  )   { 
  float volume ; 
  float pi = 3.14159 ; 
   ; 
  volume =  ( 4.0 / 3.0 )  * pi *  (  ( *radius )  *  ( *radius )  *  ( *radius )  )  ; 
   { 
     ( *temptemp1 )  = volume ; 
     ; 
   } 
  return 0 ; 
 } 
