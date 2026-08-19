#include <stdio.h>

int entry_point ( int ( *rows )  )   { 
  int k ; 
  int j ; 
  int i ; 
   ; 
  if  (  ( *rows )  < 1 )   { 
     ; 
    return 0 ; 
   } 
  i = 1 ; 
  while  ( i <=  ( *rows )  )   { 
    j =  ( *rows )  - i ; 
    while  ( j > 0 )   { 
       ; 
      j-- ; 
     } 
    k = 0 ; 
    while  ( k < i )   { 
       ; 
      k++ ; 
     }  ; 
    i++ ; 
   } 
  return 0 ; 
 } 
