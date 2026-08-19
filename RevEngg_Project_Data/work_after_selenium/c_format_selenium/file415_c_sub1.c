#include <stdio.h>

int entry_point ( int ( *decimal )  ,  int ( *temptemp1 )  )   { 
  int octal = 0 ; 
  int placeValue = 1 ; 
   ; 
  while  (  ( *decimal )  != 0 )   { 
    octal +=  (  ( *decimal )  % 8 )  * placeValue ; 
     ( *decimal )  /= 8 ; 
    placeValue *= 10 ; 
   } 
  int result = octal ; 
   ; 
   { 
     ( *temptemp1 )  = result ; 
     ; 
   } 
  return 0 ; 
 } 
