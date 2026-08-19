#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i ; 
  int sum_of_divisors ; 
   ; 
  sum_of_divisors = 0 ; 
  i = 1 ; 
  while  ( i <  ( *number )  )   { 
    if  (  ( *number )  % i == 0 )  sum_of_divisors += i ; 
    i++ ; 
   } 
  if  ( sum_of_divisors ==  ( *number )  )   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *number )  ; 
     ; 
   } 
  return 0 ; 
 } 
