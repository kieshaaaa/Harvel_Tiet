#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int sum = 0 ; 
  int i = 1 ; 
   ; 
  while  ( i <  ( *num )  )   { 
    if  (  ( *num )  % i == 0 )   { 
      sum += i ; 
     } 
    i++ ; 
   } 
  if  ( sum ==  ( *num )  )   { 
     { 
       ( *temptemp1 )  =  ( *num )  ; 
       ; 
     } 
   }  else  { 
     { 
       ( *temptemp2 )  =  ( *num )  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
