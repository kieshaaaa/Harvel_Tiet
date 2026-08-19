#include <stdio.h>

unsigned long factorial_calc ( int num )   { 
  int i ; 
  unsigned long fact = 1 ; 
  i = num ; 
  while  ( i >= 1 )   { 
    fact = fact * i ; 
    i-- ; 
   } 
  return fact ; 
 } 
int entry_point ( int ( *N )  ,  float ( *temptemp1 )  )   { 
  int i ; 
  float sum ; 
   ; 
  sum = 0.0f ; 
  i = 1 ; 
  while  ( i <=  ( *N )  )   { 
    sum = sum +  (  ( float )  ( i )  /  ( float )  ( factorial_calc ( i )  )  )  ; 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
