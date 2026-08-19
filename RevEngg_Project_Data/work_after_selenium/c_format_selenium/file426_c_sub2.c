#include <stdio.h>

int array [ 100 ]  ,  array1 [ 100 ]  ; 
void entry_point ( int ( *n )  ,  int ( *array )  ,  int ( *temptemp1 )  )   { 
  int temp ; 
  int k ; 
  int j ; 
  int i ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
    array1 [ i ]  = array [ i ]  ; 
   } 
  for  ( k = 0 ;  k < 3 ;  k++ )   { 
    for  ( i =  ( *n )  - 1 ;  i >= 0 ;  i-- )   { 
      for  ( j = i - 1 ;  j >= 0 ;  j-- )   { 
        if  (  ( array [ i ]  % 10 )  <  ( array [ j ]  % 10 )  )   { 
          temp = array [ i ]  ; 
          array [ i ]  = array [ j ]  ; 
          array [ j ]  = temp ; 
          temp = array1 [ i ]  ; 
          array1 [ i ]  = array1 [ j ]  ; 
          array1 [ j ]  = temp ; 
         } 
       } 
     } 
    for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
      array [ i ]  = array [ i ]  / 10 ; 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = array1 [ i ]  ; 
       ; 
     } 
   } 
 } 
