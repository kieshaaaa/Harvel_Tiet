#include <stdio.h>

int entry_point ( int ( *numElements )  ,  int ( *position )  ,  int ( *value )  , 
                int ( *temptemp1 )  )   { 
  int numbers [ 100 ]  ; 
  int idx ; 
  int index ; 
   ; 
   ; 
   ; 
  index =  ( *numElements )  ; 
  while  ( index >=  ( *position )  )   { 
    numbers [ index ]  = numbers [ index - 1 ]  ; 
    index-- ; 
   } 
  numbers [  ( *position )  - 1 ]  =  ( *value )  ; 
   ( *numElements ) ++ ; 
   ; 
  for  ( idx = 0 ;  idx <  ( *numElements )  ;  idx++ )   { 
     { 
       ( *temptemp1 )  = numbers [ idx ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
