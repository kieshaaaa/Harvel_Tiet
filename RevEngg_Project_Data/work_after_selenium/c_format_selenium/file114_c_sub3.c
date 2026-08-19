#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *array )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   } 
  for  ( i = 0 ;  i <  ( *n )  - 1 ;  i++ )   { 
    for  ( j = 0 ;  j <  ( *n )  - i - 1 ;  j++ )   { 
      if  ( array [ j ]  > array [ j + 1 ]  )   { 
        int temp = array [ j + 1 ]  ; 
        array [ j + 1 ]  = array [ j ]  ; 
        array [ j ]  = temp ; 
       } 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = array [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
