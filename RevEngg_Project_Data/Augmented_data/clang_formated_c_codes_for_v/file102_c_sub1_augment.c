#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int isPrime = 1 ; 
  int i ; 
   ; 
  if  (  ( *num )  <= 1 )  isPrime = 0 ; 
  i = 2 ; 
  while  ( i <= sqrt (  ( *num )  )  )   { 
    if  (  ( *num )  % i == 0 )   { 
      isPrime = 0 ; 
      break ; 
     } 
    i++ ; 
   } 
  if  ( isPrime == 1 )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
