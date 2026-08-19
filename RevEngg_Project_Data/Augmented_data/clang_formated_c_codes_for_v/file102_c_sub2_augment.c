#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int isPrime = 1 ; 
  int j ; 
   ; 
  if  (  ( *num )  == 2 ) 
    isPrime = 1 ; 
  else if  (  ( *num )  < 2 ||  ( *num )  % 2 == 0 ) 
    isPrime = 0 ; 
  else  { 
    j = 3 ; 
    while  ( j <  ( *num )  / 2 )   { 
      if  (  ( *num )  % j == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
      j += 2 ; 
     } 
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
