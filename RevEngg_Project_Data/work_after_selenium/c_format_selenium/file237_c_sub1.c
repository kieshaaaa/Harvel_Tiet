#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i = 2 ; 
  char isPrime = 1 ; 
   ; 
  while  ( i <=  ( *number )  / 2 )   { 
    if  (  ( *number )  % i == 0 )   { 
      isPrime = 0 ; 
      break ; 
     } 
    i++ ; 
   } 
  if  ( isPrime )   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *number )  ; 
     ; 
   } 
  return 0 ; 
 } 
