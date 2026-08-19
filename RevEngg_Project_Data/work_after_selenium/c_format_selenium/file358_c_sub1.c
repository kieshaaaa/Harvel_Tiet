#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  )   { 
  int next ; 
  int curr = 1 ; 
  int prev = 0 ; 
  int i = 2 ; 
   ; 
  if  (  ( *n )  < 0 )   { 
     ; 
    return 1 ; 
   } 
  if  (  ( *n )  == 0 )   { 
     ; 
    return 0 ; 
   }  else if  (  ( *n )  == 1 )   { 
     ; 
    return 0 ; 
   } 
  while  ( i <=  ( *n )  )   { 
    next = prev + curr ; 
    prev = curr ; 
    curr = next ; 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = curr ; 
     ; 
   } 
  return 0 ; 
 } 
