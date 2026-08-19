#include <stdio.h>

int entry_point ( double ( *radius )  ,  float ( *temptemp1 )  )   { 
  double volume ; 
  double pi = 3.141592653589793 ; 
   ; 
  volume =  ( 4.0 / 3.0 )  * pi *  ( *radius )  *  ( *radius )  *  ( *radius )  ; 
   ; 
   { 
     ( *temptemp1 )  = volume ; 
     ; 
   } 
  return 0 ; 
 } 
