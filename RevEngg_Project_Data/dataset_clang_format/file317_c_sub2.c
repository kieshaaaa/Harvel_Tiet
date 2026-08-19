#include <stdio.h>

int entry_point ( int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int i = 0 ; 
  int product = 1 ; 
  int sum = 0 ; 
   ; 
  do  { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
    i++ ; 
   }  while  ( i < 10 )  ; 
  i = 0 ; 
  do  { 
    sum += arr [ i ]  ; 
    product *= arr [ i ]  ; 
    i++ ; 
   }  while  ( i < 10 )  ; 
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
