#include <stdio.h>

int entry_point ( int ( *upperLimit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int divisor ; 
  int number ; 
  int isPrime ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *upperLimit )  ; 
     ; 
   } 
  number = 2 ; 
  while  ( number <  ( *upperLimit )  )   { 
    isPrime = 1 ; 
    divisor = 2 ; 
    while  ( divisor * divisor <= number )   { 
      if  ( number % divisor == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
      divisor++ ; 
     } 
    if  ( isPrime )   { 
       { 
         ( *temptemp2 )  = number ; 
         ; 
       } 
     } 
    number++ ; 
   }  ; 
  return 0 ; 
 } 
