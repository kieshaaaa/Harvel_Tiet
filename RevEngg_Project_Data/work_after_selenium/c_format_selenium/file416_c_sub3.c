#include <stdio.h>

int entry_point ( int ( *N )  ,  float ( *temptemp1 )  )   { 
  int i ; 
  float sum = 0.0 ; 
   ; 
  for  ( i = 1 ;  i <=  ( *N )  ;  i++ )   { 
    float odd = 2 * i - 1 ; 
    sum += odd /  ( odd * odd )  ; 
   } 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
