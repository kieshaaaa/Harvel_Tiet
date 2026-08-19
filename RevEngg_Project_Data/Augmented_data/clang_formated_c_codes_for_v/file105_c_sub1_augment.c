#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int y ; 
  int x ; 
  int isComposite ; 
  int counter = 0 ; 
   ; 
  x = 4 ; 
  while  ( x <=  ( *num )  )   { 
    isComposite = 0 ; 
    y = 2 ; 
    while  ( y < x )   { 
      if  ( x % y == 0 )   { 
        isComposite = 1 ; 
        break ; 
       } 
      y++ ; 
     } 
    if  ( isComposite )   { 
      counter++ ; 
     } 
    x++ ; 
   } 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ( *temptemp2 )  = counter ; 
     ; 
   } 
  return 0 ; 
 } 
