#include <stdio.h>

int entry_point ( int ( *numElements )  ,  int ( *position )  ,  int ( *temptemp1 )  )   { 
  int array [ 100 ]  ; 
  int index2 ; 
  int index1 ; 
   ; 
   ; 
  index1 =  ( *position )  - 1 ; 
  while  ( index1 <  ( *numElements )  - 1 )   { 
    array [ index1 ]  = array [ index1 + 1 ]  ; 
    index1++ ; 
   } 
   ( *numElements ) -- ; 
   ; 
  index2 = 0 ; 
  while  ( index2 <  ( *numElements )  )   { 
     { 
       ( *temptemp1 )  = array [ index2 ]  ; 
       ; 
     } 
    index2++ ; 
   } 
  return 0 ; 
 } 
