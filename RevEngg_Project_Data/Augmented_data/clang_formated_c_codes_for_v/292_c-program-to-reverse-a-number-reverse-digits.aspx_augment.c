#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  )   { 
  int reversedNum ; 
  int digit ; 
   ; 
  reversedNum = 0 ; 
  for  (  ;   ( *num )  > 0 ;   ( *num )  /= 10 )   { 
    digit =  ( *num )  % 10 ; 
    reversedNum =  ( reversedNum * 10 )  + digit ; 
   } 
   { 
     ( *temptemp1 )  = reversedNum ; 
     ; 
   } 
  return 0 ; 
 } 
