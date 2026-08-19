#include <stdio.h>

int entry_point ( float ( *horsepower )  ,  float ( *temptemp1 )  )   { 
  float watts ; 
   ; 
  watts =  ( *horsepower )  * 746 ; 
   { 
     ( *temptemp1 )  = watts ; 
     ; 
   } 
  return 0 ; 
 } 
