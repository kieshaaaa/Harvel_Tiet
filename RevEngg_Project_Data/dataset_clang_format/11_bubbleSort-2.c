#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int array [ 100 ]  ; 
  int k ; 
  int j ; 
  int i ; 
  int swap ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ; 
   } 
  for  ( i = 0 ;  i <  ( *n )  - 1 ;  i++ )   { 
    for  ( j = 0 ;  j <  ( *n )  - i - 1 ;  j++ )   { 
      if  ( array [ j ]  > array [ j + 1 ]  )   { 
        swap = array [ j ]  ; 
        array [ j ]  = array [ j + 1 ]  ; 
        array [ j + 1 ]  = swap ; 
       } 
     } 
   }  ; 
  for  ( k = 0 ;  k <  ( *n )  ;  k++ )   { 
     ( *temptemp2 )  = array [ k ]  ; 
     ; 
   } 
  return 0 ; 
 } 
