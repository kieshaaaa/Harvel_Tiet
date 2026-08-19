#include <stdio.h>

int entry_point ( int ( *decimal )  ,  int ( *temptemp1 )  )   { 
  int bin [ 32 ]  ; 
  int rem ; 
  int index = 0 ; 
  int k ; 
   ; 
  for  ( k = 0 ;   ( *decimal )  > 0 ;  k++ )   { 
    bin [ k ]  =  ( *decimal )  % 2 ; 
     ( *decimal )  /= 2 ; 
   }  ; 
  for  ( k = k - 1 ;  k >= 0 ;  k-- )   { 
     ( *temptemp1 )  = bin [ k ]  ; 
     ; 
   }  ; 
  return 0 ; 
 } 
