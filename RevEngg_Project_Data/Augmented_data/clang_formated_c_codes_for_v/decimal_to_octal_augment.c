#include <stdio.h>

int entry_point ( int ( *decimal )  ,  int ( *temptemp1 )  )   { 
  int tempDec ; 
  int octal = 0 ; 
  int pv = 1 ; 
   ; 
  tempDec =  ( *decimal )  ; 
  for  (  ;  tempDec > 0 ;  tempDec /= 8 ,  pv *= 10 )   { 
    octal = octal +  ( tempDec % 8 )  * pv ; 
   } 
   { 
     ( *temptemp1 )  = octal ; 
     ; 
   } 
  return 0 ; 
 } 
