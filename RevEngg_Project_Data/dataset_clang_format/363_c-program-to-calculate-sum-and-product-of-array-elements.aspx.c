#include <stdio.h>

int entry_point ( int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int i ; 
  int product ; 
  int sum ; 
   ; 
  for  ( i = 0 ;  i < 10 ;  i++ )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
   } 
  sum = 0 ; 
  product = 1 ; 
  for  ( i = 0 ;  i < 10 ;  i++ )   { 
    sum = sum + arr [ i ]  ; 
    product = product * arr [ i ]  ; 
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
