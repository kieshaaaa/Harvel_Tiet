#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int y ; 
  int x ; 
  int isPrime ; 
  int compositeCount = 0 ; 
   ; 
  x = 2 ; 
  while  ( x <=  ( *num )  )   { 
    isPrime = 1 ; 
    y = 2 ; 
    while  ( y * y <= x )   { 
      if  ( x % y == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
      y++ ; 
     } 
    if  ( !isPrime )   { 
      compositeCount++ ; 
     } 
    x++ ; 
   } 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ( *temptemp2 )  = compositeCount ; 
     ; 
   } 
  return 0 ; 
 } 
