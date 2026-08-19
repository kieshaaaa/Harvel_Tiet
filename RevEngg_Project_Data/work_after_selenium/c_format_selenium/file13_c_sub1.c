#include <stdio.h>

int entry_point ( int ( *upperLimit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int div ; 
  int num ; 
  int isPrime ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *upperLimit )  ; 
     ; 
   } 
  for  ( num = 2 ;  num <  ( *upperLimit )  ;  num++ )   { 
    isPrime = 1 ; 
    for  ( div = 2 ;  div * div <= num ;  div++ )   { 
      if  ( num % div == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
     } 
    if  ( isPrime )   { 
       { 
         ( *temptemp2 )  = num ; 
         ; 
       } 
     } 
   }  ; 
  return 0 ; 
 } 
