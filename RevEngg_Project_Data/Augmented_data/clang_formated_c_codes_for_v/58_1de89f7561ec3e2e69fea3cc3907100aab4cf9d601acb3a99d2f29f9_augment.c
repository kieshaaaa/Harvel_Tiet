#include <stdio.h>

int entry_point ( int ( *N )  ,  long int ( *temptemp1 )  )   { 
  int counter ; 
  unsigned long total ; 
   ; 
  total = 0 ; 
  counter = 1 ; 
  while  ( counter <=  ( *N )  )   { 
    total = total +  ( counter * counter )  ; 
    counter++ ; 
   } 
   { 
     ( *temptemp1 )  = total ; 
     ; 
   } 
  return 0 ; 
 } 
