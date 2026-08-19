#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i ; 
  char isPrime = 0 ; 
   ; 
  i = 2 ; 
  while  ( i <  (  ( *num )  / 2 )  )   { 
    if  (  ( *num )  % i == 0 )   { 
      isPrime = 1 ; 
      break ; 
     } 
    i++ ; 
   } 
  if  ( isPrime == 0 )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
