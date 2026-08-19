#include <stdio.h>

int entry_point ( int ( *N )  ,  float ( *temptemp1 )  )   { 
  int i = 1 ; 
  float sum = 0.0 ; 
   ; 
  while  ( i <=  ( *N )  )   { 
    sum += 1.0 / i ; 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
