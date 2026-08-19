#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int primeCount = 0 ; 
  int j ; 
  int i ; 
   ; 
  i =  ( *num1 )  ; 
  while  ( i <=  ( *num2 )  )   { 
    if  ( i < 2 )   { 
      i++ ; 
      continue ; 
     } 
    int isPrime = 1 ; 
    j = 2 ; 
    while  ( j * j <= i )   { 
      if  ( i % j == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
      j++ ; 
     } 
    if  ( isPrime )   { 
       { 
         ( *temptemp1 )  = i ; 
         ; 
       } 
      primeCount++ ; 
     } 
    i++ ; 
   } 
   { 
     ( *temptemp2 )  =  ( *num1 )  ; 
     ( *temptemp3 )  =  ( *num2 )  ; 
     ( *temptemp4 )  = primeCount ; 
     ; 
   } 
  return 0 ; 
 } 
