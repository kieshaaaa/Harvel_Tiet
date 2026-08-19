#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  )   { 
  int dig ; 
   ; 
  int revNumber = 0 ; 
  while  (  ( *n )  > 0 )   { 
    dig =  ( *n )  % 10 ; 
    revNumber *= 10 ; 
    revNumber += dig ; 
     ( *n )  /= 10 ; 
   }  ; 
   { 
     ( *temptemp1 )  = revNumber ; 
     ; 
   } 
  return 0 ; 
 } 
