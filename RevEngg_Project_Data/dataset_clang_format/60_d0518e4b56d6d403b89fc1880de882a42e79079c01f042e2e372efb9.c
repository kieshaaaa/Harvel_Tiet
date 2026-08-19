#include <stdio.h>

int entry_point ( int ( *N )  ,  float ( *temptemp1 )  )   { 
  int i ; 
  float sum ; 
   ; 
  sum = 0.0f ; 
  for  ( i = 1 ;  i <=  ( *N )  ;  i++ )  sum = sum +  (  ( float ) 1 /  ( float ) i )  ; 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
