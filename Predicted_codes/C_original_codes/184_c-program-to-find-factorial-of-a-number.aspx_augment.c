#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  long int ( *temptemp2 )  )   { 
  int i ; 
  long int factorial ; 
   ; 
  factorial = 1 ; 
  i =  ( *n )  ; 
  while  ( i >= 1 )   { 
    factorial = factorial * i ; 
    i-- ; 
   } 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = factorial ; 
     ; 
   } 
  return 0 ; 
 } 