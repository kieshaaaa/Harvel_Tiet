#include <stdio.h>

int entry_point ( int ( *n )  ,  char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  int j ; 
  int i ; 
  char sym = 'A' ; 
  int cnt = 1 ; 
   ; 
   ; 
  i = 1 ; 
  while  ( i <=  ( *n )  )   { 
    j = 0 ; 
    while  ( j <=  ( cnt / 2 )  )   { 
       { 
         ( *temptemp1 )  = sym++ ; 
         ; 
       } 
      j++ ; 
     } 
    sym = sym - 2 ; 
    j = 0 ; 
    while  ( j <  ( cnt / 2 )  )   { 
       { 
         ( *temptemp2 )  = sym-- ; 
         ; 
       } 
      j++ ; 
     } 
    cnt = cnt + 2 ; 
    sym = 'A' ; 
     ; 
    i++ ; 
   } 
  return  ( 0 )  ; 
  return 0 ; 
 } 
