#include <stdio.h>

int entry_point ( float ( *pascals )  ,  float ( *temptemp1 )  )   { 
  float atm ; 
  float pascalToAtm = 101325 ; 
   ; 
  atm =  ( *pascals )  / pascalToAtm ; 
   ; 
   { 
     ( *temptemp1 )  = atm ; 
     ; 
   }  ; 
   ; 
  return 0 ; 
 } 
