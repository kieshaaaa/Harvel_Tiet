#include <math.h>
#include <stdio.h>

int entry_point ( int ( *decimal )  ,  int ( *temptemp1 )  )   { 
  int place = 1 ; 
  int octal = 0 ; 
   ; 
  while  (  ( *decimal )  > 0 )   { 
    octal +=  (  ( *decimal )  % 8 )  * place ; 
     ( *decimal )  /= 8 ; 
    place *= 10 ; 
   } 
   { 
     ( *temptemp1 )  = octal ; 
     ; 
   } 
  return 0 ; 
 } 
