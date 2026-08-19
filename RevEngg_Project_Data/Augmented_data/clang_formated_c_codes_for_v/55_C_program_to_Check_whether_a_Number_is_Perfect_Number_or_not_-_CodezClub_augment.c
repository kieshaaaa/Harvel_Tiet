#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i ; 
  int sum ; 
   ; 
  sum = 0 ; 
  i = 1 ; 
  while  ( i <  ( *number )  )   { 
    if  (  ( *number )  % i == 0 )  sum += i ; 
    i++ ; 
   } 
  if  ( sum ==  ( *number )  )   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *number )  ; 
     ; 
   } 
  return 0 ; 
 } 
