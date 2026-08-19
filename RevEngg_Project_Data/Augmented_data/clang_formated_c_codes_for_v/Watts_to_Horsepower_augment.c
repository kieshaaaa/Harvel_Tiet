#include <stdio.h>

int entry_point ( float ( *power_watts )  ,  float ( *temptemp1 )  )   { 
  float power_horsepower ; 
   ; 
  power_horsepower =  ( *power_watts )  / 746 ; 
   { 
     ( *temptemp1 )  = power_horsepower ; 
     ; 
   } 
  return 0 ; 
 } 
