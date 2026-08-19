#include <stdio.h>

int entry_point ( int ( *decimal )  ,  int ( *temptemp1 )  )   { 
  int i ; 
  int index ; 
  int binary [ 32 ]  ; 
   ; 
  index = 0 ; 
  for  (  ;   ( *decimal )  > 0 ;  )   { 
    binary [ index ]  =  ( *decimal )  % 2 ; 
     ( *decimal )  =  ( *decimal )  / 2 ; 
    index++ ; 
   }  ; 
  for  ( i =  ( index - 1 )  ;  i >= 0 ;  i-- )   { 
     ( *temptemp1 )  = binary [ i ]  ; 
     ; 
   } 
  return 0 ; 
 } 
