#include <stdio.h>

int entry_point ( int ( *numbers )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int i ; 
  int product ; 
  int sum ; 
   ; 
  i = 0 ; 
  while  ( i < 10 )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
    i++ ; 
   } 
  sum = 0 ; 
  product = 1 ; 
  i = 0 ; 
  while  ( i < 10 )   { 
    sum = sum + numbers [ i ]  ; 
    product = product * numbers [ i ]  ; 
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
