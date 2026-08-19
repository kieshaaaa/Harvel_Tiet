#include <stdio.h>

int isPrime ( int n )  ; 
int entry_point ( int ( *temptemp1 )  )   { 
  int j ; 
  int i ; 
  int num = 2 ; 
  i = 0 ; 
  while  ( i < 5 )   { 
     ; 
    j = 0 ; 
    while  ( j <= i )   { 
      while  ( !isPrime ( num )  )   { 
        num++ ; 
       } 
       { 
         ( *temptemp1 )  = num++ ; 
         ; 
       } 
      j++ ; 
     } 
    i++ ; 
   } 
  return  ( 0 )  ; 
  return 0 ; 
 } 
int isPrime ( int n )   { 
  int i ,  flag ; 
  i = 2 ; 
  while  ( i < n )   { 
    if  ( n % i != 0 ) 
      flag = 1 ; 
    else  { 
      flag = 0 ; 
      break ; 
     } 
    i++ ; 
   } 
  if  ( flag == 1 || n == 2 ) 
    return  ( 1 )  ; 
  else
    return  ( 0 )  ; 
 } 
