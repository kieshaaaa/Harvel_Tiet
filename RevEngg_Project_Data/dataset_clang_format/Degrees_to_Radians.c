#include <stdio.h>

int entry_point ( double ( *degrees )  ,  int ( *temptemp1 )  )   { 
  double radians ; 
   ; 
  radians =  ( *degrees )  *  ( 3.14 / 180.0 )  ; 
   { 
     ( *temptemp1 )  = radians ; 
     ; 
   } 
  return 0 ; 
 } 
