#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
  int i ; 
  int total = 0 ; 
   ; 
  total =  ( *n )  - 2 ; 
  for  ( i = 2 ;  i <=  ( *n )  ;  i++ )   { 
    for  ( j = 2 ;  j * j <= i ;  j++ )   { 
      if  ( i % j == 0 )   { 
        break ; 
       } 
      if  ( j + 1 > i / j )   { 
        total-- ; 
        break ; 
       } 
     } 
   } 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = total + 1 ; 
     ; 
   } 
  return 0 ; 
 } 
