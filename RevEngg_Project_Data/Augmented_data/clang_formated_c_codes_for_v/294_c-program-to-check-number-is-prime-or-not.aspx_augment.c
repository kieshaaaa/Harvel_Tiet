#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int counter ; 
  char isNotPrime = 0 ; 
   ; 
  counter = 2 ; 
  while  ( counter <=  (  ( *num )  / 2 )  )   { 
    if  (  ( *num )  % counter == 0 )   { 
      isNotPrime = 1 ; 
      break ; 
     } 
    counter++ ; 
   } 
  if  ( isNotPrime == 0 )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
