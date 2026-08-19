#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  )   { 
  int count = 0 ; 
  int square ; 
  int i = 1 ; 
   ; 
  square = i * i ; 
  while  ( square <=  ( *limit )  )   { 
    count++ ; 
    i++ ; 
    square = i * i ; 
   }  ; 
   { 
     ( *temptemp1 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
