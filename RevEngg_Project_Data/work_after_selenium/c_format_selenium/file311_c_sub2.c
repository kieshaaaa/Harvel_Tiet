#include <stdio.h>

int entry_point ( int ( *N )  ,  unsigned long int ( *temptemp1 )  )   { 
  int i = 1 ; 
  unsigned long sum = 0 ; 
   ; 
  while  ( i <=  ( *N )  )   { 
    sum += i * i ; 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
