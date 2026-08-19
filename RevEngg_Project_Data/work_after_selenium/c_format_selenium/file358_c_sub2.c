#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  )   { 
  int i ; 
  int next ; 
  int curr = 1 ; 
  int prev = 0 ; 
   ; 
  if  (  ( *n )  < 0 )   { 
     ; 
    return 1 ; 
   } 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
    if  ( i == 0 )   { 
      next = 0 ; 
     }  else if  ( i == 1 )   { 
      next = curr ; 
     }  else  { 
      next = prev + curr ; 
      prev = curr ; 
      curr = next ; 
     } 
   } 
   { 
     ( *temptemp1 )  = next ; 
     ; 
   } 
  return 0 ; 
 } 
