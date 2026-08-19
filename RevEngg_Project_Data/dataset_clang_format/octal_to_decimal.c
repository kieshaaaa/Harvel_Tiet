#include <stdio.h>

int entry_point ( int ( *octal )  ,  int ( *temptemp1 )  )   { 
  int decimal ; 
  int base = 1 ; 
   ; 
  while  (  ( *octal )  > 0 )   { 
    decimal = decimal +  (  ( *octal )  % 10 )  * base ; 
     ( *octal )  =  ( *octal )  / 10 ; 
    base = base * 8 ; 
   } 
   { 
     ( *temptemp1 )  = decimal ; 
     ; 
   } 
  return 0 ; 
 } 
