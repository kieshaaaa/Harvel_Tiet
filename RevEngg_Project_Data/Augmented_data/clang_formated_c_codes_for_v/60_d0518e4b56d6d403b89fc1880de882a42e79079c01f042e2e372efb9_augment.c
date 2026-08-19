#include <stdio.h>

int entry_point ( int ( *n )  ,  float ( *temptemp1 )  )   { 
  int i ; 
  float sum ; 
   ; 
  sum = 0.0f ; 
  i = 1 ; 
  while  ( i <=  ( *n )  )   { 
    sum = sum +  (  ( float ) 1 /  ( float ) i )  ; 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
