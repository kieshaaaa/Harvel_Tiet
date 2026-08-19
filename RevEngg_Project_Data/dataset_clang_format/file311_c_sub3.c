#include <stdio.h>

int entry_point ( int ( *N )  ,  unsigned long int ( *temptemp1 )  )   { 
  unsigned long sum = 0 ; 
  int i = 1 ; 
  int nextSquare = 1 ; 
   ; 
  while  ( i <=  ( *N )  )   { 
    sum += nextSquare ; 
    nextSquare +=  ( 2 * i + 1 )  ; 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
