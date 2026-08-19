#include <stdio.h>

int entry_point ( int ( *N )  ,  float ( *temptemp1 )  )   { 
  int i ; 
  float term ; 
  float sum = 0.0 ; 
   ; 
  for  ( i = 1 ;  i <= 2 *  ( *N )  ;  i += 2 )   { 
    term = i /  ( float )  ( i * i )  ; 
    sum += term ; 
   } 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
