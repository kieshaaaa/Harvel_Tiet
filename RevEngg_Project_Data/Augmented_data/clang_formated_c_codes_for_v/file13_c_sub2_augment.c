#include <stdio.h>

int entry_point ( int ( *upperLimit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int divisor ; 
  int number ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *upperLimit )  ; 
     ; 
   }  ; 
  number = 3 ; 
  while  ( number <  ( *upperLimit )  )   { 
    divisor = 3 ; 
    while  ( divisor * divisor <= number )   { 
      if  ( number % divisor == 0 )   { 
        goto not_prime ; 
       } 
      divisor += 2 ; 
     } 
     { 
       ( *temptemp2 )  = number ; 
       ; 
     } 
  not_prime: ; 
    number += 2 ; 
   }  ; 
  return 0 ; 
 } 
