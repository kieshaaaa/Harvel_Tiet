#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *pos )  ,  int ( *temptemp1 )  )   { 
  int arr [ 100 ]  ; 
  int j ; 
  int i ; 
   ; 
   ; 
  for  ( i =  ( *pos )  - 1 ;  i <  ( *n )  - 1 ;  i++ )   { 
    arr [ i ]  = arr [ i + 1 ]  ; 
   } 
   ( *n ) -- ; 
   ; 
  for  ( j = 0 ;  j <  ( *n )  ;  j++ )   { 
     { 
       ( *temptemp1 )  = arr [ j ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
