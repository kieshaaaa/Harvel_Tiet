#include <stdio.h>

int entry_point ( float ( *numbers )  ,  int ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float result = 1.0 ; 
  int i ; 
  for  ( i = 0 ;  i < 4 ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
    result *= numbers [ i ]  ; 
   } 
   { 
     ( *temptemp2 )  = result ; 
     ; 
   } 
  return 0 ; 
 } 
