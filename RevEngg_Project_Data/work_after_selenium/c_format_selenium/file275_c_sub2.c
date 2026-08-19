#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int sum = 0 ; 
  int counter = 1 ; 
   ; 
  if  (  ( *n )  <= 0 )   { 
     ; 
    return 1 ; 
   } 
  while  ( counter <=  ( *n )  )   { 
    sum += counter ; 
    counter++ ; 
   } 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
