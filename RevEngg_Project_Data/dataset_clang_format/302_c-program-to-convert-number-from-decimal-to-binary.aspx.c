#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  )   { 
  int i ; 
  int cnt ; 
  int bin [ 32 ]  ; 
   ; 
  cnt = 0 ; 
  while  (  ( *number )  > 0 )   { 
    bin [ cnt ]  =  ( *number )  % 2 ; 
     ( *number )  =  ( *number )  / 2 ; 
    cnt++ ; 
   }  ; 
  for  ( i =  ( cnt - 1 )  ;  i >= 0 ;  i-- )   { 
     ( *temptemp1 )  = bin [ i ]  ; 
     ; 
   } 
  return 0 ; 
 } 
