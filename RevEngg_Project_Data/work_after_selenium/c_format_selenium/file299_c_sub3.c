#include <math.h>
#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
  int num =  ( *n )  + 1 ; 
  if  ( num <= 3 )   { 
     { 
       ( *temptemp1 )  = num ; 
       ; 
     } 
    else continue ; 
    break ; 
   } 
  if  ( num % 2 == 0 || num % 3 == 0 )  continue ; 
  int isPrime = 1 ; 
  int i = 5 ; 
  if  ( num % i == 0 || num %  ( i + 2 )  == 0 )   { 
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
