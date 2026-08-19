#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int num ; 
  int isPrime ; 
  int i ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *limit )  ; 
     ; 
   } 
  num = 1 ; 
  while  ( num <  ( *limit )  )   { 
    isPrime = 1 ; 
    i = 2 ; 
    while  ( i < num )   { 
      if  ( num % i == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
      i++ ; 
     } 
    if  ( isPrime )   { 
       ( *temptemp2 )  = num ; 
       ; 
     } 
    num++ ; 
   }  ; 
  return 0 ; 
 } 
