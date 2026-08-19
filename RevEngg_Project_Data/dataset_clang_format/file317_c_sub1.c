#include <stdio.h>

int entry_point ( int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int i = 0 ; 
  int product = 1 ; 
  int sum = 0 ; 
   ; 
  while  ( i < 10 )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
    i++ ; 
   } 
  i = 0 ; 
  while  ( i < 10 )   { 
    sum += arr [ i ]  ; 
    product *= arr [ i ]  ; 
    i++ ; 
   } 
   { 
     ( *temptemp2 )  = sum ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = product ; 
     ; 
   } 
  return 0 ; 
 } 
