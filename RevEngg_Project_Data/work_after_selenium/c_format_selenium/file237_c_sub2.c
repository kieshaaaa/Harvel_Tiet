#include <math.h>
#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  char isPrime = 1 ; 
  float limit ; 
   ; 
  limit = sqrt (  ( *number )  )  ; 
  int i = 2 ; 
  if  (  ( *number )  % i == 0 )   { 
    isPrime = 0 ; 
    break ; 
   } 
 } 
if  ( isPrime &&  ( *number )  > 1 )   { 
   ( *temptemp1 )  =  ( *number )  ; 
   ; 
 }  else  { 
   ( *temptemp2 )  =  ( *number )  ; 
   ; 
 } 
return 0 ; 
 } 
