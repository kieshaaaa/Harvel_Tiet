#include <stdio.h>

int entry_point ( int ( *num )  )   { 
   ; 
  if  (  ( *num )  == 0 )   { 
     ; 
    return 0 ; 
   } 
  int reverse = 0 ; 
  while  (  ( *num )  != 0 )   { 
    reverse = reverse * 10 +  (  ( *num )  % 10 )  ; 
     ( *num )  /= 10 ; 
   } 
  while  ( reverse != 0 )   { 
    int digit = reverse % 10 ; 
    switch  ( digit )   { 
       ; 
       ; 
       ; 
       ; 
       ; 
       ; 
       ; 
       ; 
       ; 
       ; 
     } 
    reverse /= 10 ; 
   } 
  return 0 ; 
 } 
