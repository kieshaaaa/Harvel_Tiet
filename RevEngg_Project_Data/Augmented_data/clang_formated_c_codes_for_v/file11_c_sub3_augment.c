#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int isPrime ; 
  int count = 0 ; 
  int j ; 
  int i ; 
   ; 
  if  (  ( *num1 )  <= 2 )   { 
     ; 
    count = 1 ; 
     ( *num1 )  = 3 ; 
   } 
  i =  ( *num1 )  ; 
  while  ( i <=  ( *num2 )  )   { 
    isPrime = 1 ; 
    j = 3 ; 
    while  ( j * j <= i )   { 
      if  ( i % j == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
      j += 2 ; 
     } 
    if  ( isPrime )   { 
       { 
         ( *temptemp1 )  = i ; 
         ; 
       } 
      count++ ; 
     } 
    i +=  ( i % 2 == 0 )  ? 1 : 2 ; 
   } 
   { 
     ( *temptemp2 )  =  ( *num1 )  ; 
     ( *temptemp3 )  =  ( *num2 )  ; 
     ( *temptemp4 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
