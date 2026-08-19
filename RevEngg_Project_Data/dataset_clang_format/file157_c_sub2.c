#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i ; 
  int count = 0 ; 
  int nthPrime ; 
  int num = 2 ; 
   ; 
  while  ( count <  ( *n )  )   { 
    for  ( i = 2 ;  i <= num / 2 ;  i++ )   { 
      if  ( num % i == 0 )   { 
        break ; 
       } 
     } 
    if  ( i > num / 2 )   { 
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
