#include <stdio.h>

int entry_point ( int ( *upperLimit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int isPrime ; 
  int divisor ; 
  int number ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *upperLimit )  ; 
     ; 
   }  ; 
  number = 3 ; 
  while  ( number <  ( *upperLimit )  )   { 
    isPrime = 1 ; 
    divisor = 3 ; 
    while  ( divisor * divisor <= number )   { 
      if  ( number % divisor == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
      divisor += 2 ; 
     } 
    if  ( isPrime )   { 
       { 
         ( *temptemp2 )  = number ; 
         ; 
       } 
     } 
    number += 2 ; 
   }  ; 
  return 0 ; 
 } 
