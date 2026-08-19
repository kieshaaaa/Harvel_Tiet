#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  )   { 
  int base = 1 ; 
  int decimal = 0 ; 
   ; 
  while  (  ( *num )  )   { 
    decimal +=  (  ( *num )  % 10 )  * base ; 
    base *= 8 ; 
     ( *num )  /= 10 ; 
   } 
   { 
     ( *temptemp1 )  = decimal ; 
     ; 
   } 
  return 0 ; 
 } 
