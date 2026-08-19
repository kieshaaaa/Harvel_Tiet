#include <math.h>
#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
  int num =  ( *n )  + 1 ; 
  if  ( num == 2 )   { 
     { 
       ( *temptemp1 )  = num ; 
       ; 
     } 
    break ; 
   } 
  if  ( num % 2 == 0 )  continue ; 
  int isPrime = 1 ; 
  int i = 3 ; 
  if  ( num % i == 0 )   { 
    isPrime = 0 ; 
    break ; 
   } 
 } 
if  ( isPrime )   { 
   { 
     ( *temptemp2 )  = num ; 
     ; 
   } 
  break ; 
 } 
 } 
return 0 ; 
 } 
