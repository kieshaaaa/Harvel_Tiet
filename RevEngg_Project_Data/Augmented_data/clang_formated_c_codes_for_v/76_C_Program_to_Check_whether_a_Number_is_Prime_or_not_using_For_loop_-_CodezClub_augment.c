#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int isPrime = 1 ; 
  int i ; 
   ; 
  i = 2 ; 
  while  ( i <  ( *num )  )   { 
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
