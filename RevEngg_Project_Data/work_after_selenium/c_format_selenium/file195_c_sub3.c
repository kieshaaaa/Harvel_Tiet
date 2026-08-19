#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *arr )  ,  int ( *pos )  ,  int ( *val )  ,  int ( *temptemp1 )  )   { 
  int i = 0 ; 
   ; 
  do  { 
    i++ ; 
   }  while  ( i <  ( *n )  )  ; 
   ; 
   ; 
  for  ( i =  ( *n )  ;  i >=  ( *pos )  ;  i-- )   { 
    arr [ i ]  = arr [ i - 1 ]  ; 
   } 
  arr [  ( *pos )  - 1 ]  =  ( *val )  ; 
   ( *n ) ++ ; 
   ; 
  i = 0 ; 
  while  ( i <  ( *n )  )   { 
     { 
       ( *temptemp1 )  = arr [ i ]  ; 
       ; 
     } 
    i++ ; 
   } 
  return 0 ; 
 } 
