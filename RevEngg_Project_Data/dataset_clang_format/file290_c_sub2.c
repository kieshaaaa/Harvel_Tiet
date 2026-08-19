#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  int result ; 
  float mean ; 
   ; 
  result =  ( *num1 )  +  ( *num2 )  ; 
  mean =  ( float ) result / 2 ; 
   { 
     ( *temptemp1 )  = result ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = mean ; 
     ; 
   } 
  return 0 ; 
 } 
