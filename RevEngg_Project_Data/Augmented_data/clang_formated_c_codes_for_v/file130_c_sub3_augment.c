#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  )   { 
  int rem ; 
  int base = 1 ; 
  int dec = 0 ; 
   ; 
  for  (  ;   ( *num )  != 0 ;   ( *num )  /= 10 )   { 
    rem =  ( *num )  % 10 ; 
    dec += rem * base ; 
    base *= 8 ; 
   } 
   { 
     ( *temptemp1 )  = dec ; 
     ; 
   } 
  return 0 ; 
 } 
