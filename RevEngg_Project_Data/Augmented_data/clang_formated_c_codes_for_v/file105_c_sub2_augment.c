#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int y ; 
  int x ; 
  int count = 0 ; 
   ; 
  count =  ( *num )  - 2 ; 
  x = 2 ; 
  while  ( x <=  ( *num )  )   { 
    y = 2 ; 
    while  ( y * y <= x )   { 
      if  ( x % y == 0 )   { 
        break ; 
       } 
      if  ( y + 1 > x / y )   { 
        count-- ; 
        break ; 
       } 
      y++ ; 
     } 
    x++ ; 
   } 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ( *temptemp2 )  = count + 1 ; 
     ; 
   } 
  return 0 ; 
 } 
