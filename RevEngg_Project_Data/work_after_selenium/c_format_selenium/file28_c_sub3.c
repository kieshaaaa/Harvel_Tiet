#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *temptemp1 )  )   { 
  int result ; 
  int modifiedA ; 
   ; 
  modifiedA =  ( *a )  + 1 ; 
  result = ~modifiedA ; 
   { 
     ( *temptemp1 )  = result ; 
     ; 
   } 
  return 0 ; 
 } 
