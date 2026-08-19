#include <stdio.h>

int entry_point ( float ( *pressure_pascals )  ,  float ( *temptemp1 )  )   { 
  float pressure_atm ; 
   ; 
  pressure_atm =  ( *pressure_pascals )  / 101325 ; 
   { 
     ( *temptemp1 )  = pressure_atm ; 
     ; 
   } 
  return 0 ; 
 } 
