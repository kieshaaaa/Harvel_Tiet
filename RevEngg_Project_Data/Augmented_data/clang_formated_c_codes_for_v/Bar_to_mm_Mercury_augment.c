#include <stdio.h>

int entry_point ( float ( *pressureBar )  ,  float ( *temptemp1 )  )   { 
  float pressureMmHg ; 
   ; 
  pressureMmHg =  ( *pressureBar )  * 750.062 ; 
   { 
     ( *temptemp1 )  = pressureMmHg ; 
     ; 
   } 
  return 0 ; 
 } 
