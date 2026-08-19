#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  )   { 
  int third ; 
  int second = 1 ; 
  int first = 0 ; 
   ; 
   ; 
  for  (  ;  first <  ( *limit )  ;  )   { 
     { 
       ( *temptemp1 )  = first ; 
       ; 
     } 
    third = first + second ; 
    first = second ; 
    second = third ; 
   } 
  return 0 ; 
 } 
