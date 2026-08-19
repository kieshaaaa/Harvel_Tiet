#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *pos )  ,  int ( *val )  ,  int ( *temptemp1 )  )   { 
  int arr [ 100 ]  ; 
  int j ; 
  int i ; 
   ; 
   ; 
   ; 
  for  ( i =  ( *n )  ;  i >=  ( *pos )  ;  i-- )   { 
    arr [ i ]  = arr [ i - 1 ]  ; 
   } 
  arr [  ( *pos )  - 1 ]  =  ( *val )  ; 
   ( *n ) ++ ; 
   ; 
  for  ( j = 0 ;  j <  ( *n )  ;  j++ )   { 
     { 
       ( *temptemp1 )  = arr [ j ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
