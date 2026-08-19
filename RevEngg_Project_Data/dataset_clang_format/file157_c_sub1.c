#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int isPrime ; 
  int i ; 
  int nthPrime = 2 ; 
  int num = 2 ; 
  int count = 0 ; 
   ; 
  while  ( count <  ( *n )  )   { 
    isPrime = 1 ; 
    for  ( i = 2 ;  i * i <= num ;  i++ )   { 
      if  ( num % i == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
     } 
    if  ( isPrime )   { 
      nthPrime = num ; 
      count++ ; 
     } 
    num++ ; 
   } 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = nthPrime ; 
     ; 
   } 
  return 0 ; 
 } 
