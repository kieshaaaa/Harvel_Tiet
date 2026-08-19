#include <stdio.h>

int entry_point ( float ( *pressure_bar )  ,  float ( *temptemp1 )  )   { 
  float pressure_atm ; 
   ; 
  pressure_atm =  ( *pressure_bar )  / 1.013 ; 
   { 
     ( *temptemp1 )  = pressure_atm ; 
     ; 
   } 
  return 0 ; 
 } 
