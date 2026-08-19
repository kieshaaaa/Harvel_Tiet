#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int loop ; 
  int sum ; 
   ; 
  sum = 0 ; 
  for  ( loop = 1 ;  loop <  ( *num )  ;  loop++ )   { 
    if  (  ( *num )  % loop == 0 )  sum += loop ; 
   } 
  if  ( sum ==  ( *num )  )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
