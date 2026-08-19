#include <stdio.h>

int isPrimeNumber ( int num )   { 
  int k ; 
  if  ( num <= 1 )  return 0 ; 
  k = 2 ; 
  while  ( k * k <= num )   { 
    if  ( num % k == 0 )  return 0 ; 
    k++ ; 
   } 
  return 1 ; 
 } 
int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int count = 0 ; 
  int i ; 
   ; 
  i = 2 ; 
  while  ( i <=  ( *n )  )   { 
    if  ( !isPrimeNumber ( i )  )   { 
      count++ ; 
     } 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
