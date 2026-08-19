#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int product ; 
  int sum ; 
  int digit ; 
   ; 
  sum = 0 ; 
  product = 1 ; 
  for  (  ;   ( *num )  > 0 ;  )   { 
    digit =  ( *num )  % 10 ; 
    sum += digit ; 
    product *= digit ; 
     ( *num )  =  ( *num )  / 10 ; 
   } 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = product ; 
     ; 
   } 
  return 0 ; 
 } 
