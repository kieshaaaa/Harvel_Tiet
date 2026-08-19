#include <stdio.h>

int entry_point ( float ( *nums )  ,  int ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float product = 1.0 ; 
  int i = 0 ; 
  while  ( i < 4 )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
    product *= nums [ i ]  ; 
    i++ ; 
   } 
   { 
     ( *temptemp2 )  = product ; 
     ; 
   } 
  return 0 ; 
 } 
