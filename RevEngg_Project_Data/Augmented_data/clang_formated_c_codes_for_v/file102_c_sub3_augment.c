#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int isPrime = 1 ; 
  int upperLimit ; 
  int i ; 
   ; 
  if  (  ( *num )  <= 1 )  isPrime = 0 ; 
  upperLimit =  ( *num )  / 2 ; 
  i = 2 ; 
  while  ( i <= upperLimit )   { 
    if  (  ( *num )  % i == 0 )   { 
      isPrime = 0 ; 
      break ; 
     } 
    i++ ; 
   } 
  if  ( isPrime )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
