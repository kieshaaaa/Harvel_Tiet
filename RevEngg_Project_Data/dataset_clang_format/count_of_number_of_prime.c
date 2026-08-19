#include <stdio.h>

int isPrime ( int n )   { 
  int j ; 
  if  ( n <= 1 )  return 0 ; 
  for  ( j = 2 ;  j * j <= n ;  j++ )   { 
    if  ( n % j == 0 )  return 0 ; 
   } 
  return 1 ; 
 } 
int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int count = 0 ; 
  int i ; 
   ; 
  for  ( i = 2 ;  i <=  ( *n )  ;  i++ )   { 
    if  ( !isPrime ( i )  )   { 
      count++ ; 
     } 
   } 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
