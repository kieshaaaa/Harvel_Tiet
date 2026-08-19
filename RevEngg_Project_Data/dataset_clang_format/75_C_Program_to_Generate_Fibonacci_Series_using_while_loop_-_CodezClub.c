#include <stdio.h>

int entry_point ( int ( *lim_up )  ,  int ( *temptemp1 )  )   { 
  int C ; 
  int B = 1 ; 
  int A = 0 ; 
   ; 
   ; 
  while  ( A <  ( *lim_up )  )   { 
     { 
       ( *temptemp1 )  = A ; 
       ; 
     } 
    C = A + B ; 
    A = B ; 
    B = C ; 
   } 
  return 0 ; 
 } 
