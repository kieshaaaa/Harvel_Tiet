#include <stdio.h>

int isPrime ( int num )   { 
  if  ( num <= 1 )  return 0 ; 
  for  ( int i = 2 ;  i * i <= num ;  i++ )   { 
    if  ( num % i == 0 )  return 0 ; 
   } 
  return 1 ; 
 } 
int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int count = 0 ; 
   ; 
  int num = 2 ; 
  int nthPrime = 2 ; 
  while  ( count <  ( *n )  )   { 
    if  ( isPrime ( num )  )   { 
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
