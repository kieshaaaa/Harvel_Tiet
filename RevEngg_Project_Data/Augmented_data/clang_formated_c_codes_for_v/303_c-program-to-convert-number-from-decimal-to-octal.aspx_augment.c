#include <stdio.h>

int entry_point ( int ( *decimalNum )  ,  int ( *temptemp1 )  )   { 
  int i ; 
  int cnt ; 
  int octal [ 32 ]  ; 
   ; 
  cnt = 0 ; 
  i = 0 ; 
  for  (  ;   ( *decimalNum )  > 0 ;  i++ )   { 
    octal [ i ]  =  ( *decimalNum )  % 8 ; 
     ( *decimalNum )  =  ( *decimalNum )  / 8 ; 
   } 
  cnt = i ; 
   ; 
  for  ( i =  ( cnt - 1 )  ;  i >= 0 ;  i-- )   { 
     ( *temptemp1 )  = octal [ i ]  ; 
     ; 
   } 
  return 0 ; 
 } 
