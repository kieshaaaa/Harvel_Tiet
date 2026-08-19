#include <stdio.h>

int entry_point ( float ( *pressure_pascals )  ,  float ( *temptemp1 )  )   { 
  float pressure_bar ; 
   ; 
  pressure_bar =  ( *pressure_pascals )  / 100000 ; 
   { 
     ( *temptemp1 )  = pressure_bar ; 
     ; 
   } 
  return 0 ; 
 } 
