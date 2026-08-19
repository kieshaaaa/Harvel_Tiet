#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  char isPrime = 1 ; 
   ; 
  if  (  ( *number )  == 2 ) 
    isPrime = 1 ; 
  else if  (  ( *number )  < 2 ||  ( *number )  % 2 == 0 ) 
    isPrime = 0 ; 
  else  { 
    int i = 3 ; 
    if  (  ( *number )  % i == 0 )   { 
      isPrime = 0 ; 
      break ; 
     } 
   } 
 } 
if  ( isPrime == 1 )   { 
   ( *temptemp1 )  =  ( *number )  ; 
   ; 
 }  else  { 
   ( *temptemp2 )  =  ( *number )  ; 
   ; 
 } 
return 0 ; 
 } 
