#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *arr )  ,  int ( *pos )  ,  int ( *val )  ,  int ( *temptemp1 )  )   { 
  int i = 0 ; 
   ; 
  while  ( i <  ( *n )  )   { 
    i++ ; 
   }  ; 
   ; 
  i =  ( *n )  ; 
  while  ( i >=  ( *pos )  )   { 
    arr [ i ]  = arr [ i - 1 ]  ; 
    i-- ; 
   } 
  arr [  ( *pos )  - 1 ]  =  ( *val )  ; 
   ( *n ) ++ ; 
   ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = arr [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
