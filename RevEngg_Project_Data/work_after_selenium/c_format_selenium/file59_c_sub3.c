#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *numbers )  ,  int ( *temptemp1 )  )   { 
  int swapped ; 
  int temp ; 
  int j ; 
  int i ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
   } 
  for  ( i = 0 ;  i <  ( *n )  - 1 ;  i++ )   { 
    swapped = 0 ; 
    for  ( j = 0 ;  j <  ( *n )  - i - 1 ;  j++ )   { 
      if  ( numbers [ j ]  > numbers [ j + 1 ]  )   { 
        temp = numbers [ j ]  ; 
        numbers [ j ]  = numbers [ j + 1 ]  ; 
        numbers [ j + 1 ]  = temp ; 
        swapped = 1 ; 
       } 
     } 
    if  ( !swapped )   { 
      break ; 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = numbers [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
