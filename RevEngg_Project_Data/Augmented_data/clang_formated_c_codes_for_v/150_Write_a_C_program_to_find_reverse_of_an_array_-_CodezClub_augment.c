#include <stdio.h>

int entry_point ( int ( *arraySize )  ,  int ( *data )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int reversed [ 100 ]  ; 
  int reverseIndex ; 
  int index ; 
   ; 
   ; 
  index = 0 ; 
  while  ( index <  ( *arraySize )  )   { 
     { 
       ( *temptemp1 )  = index + 1 ; 
       ; 
     } 
    index++ ; 
   } 
  reverseIndex = 0 ; 
  index =  ( *arraySize )  - 1 ; 
  while  ( index >= 0 )   { 
    reversed [ reverseIndex ]  = data [ index ]  ; 
    reverseIndex++ ; 
    index-- ; 
   }  ; 
  index = 0 ; 
  while  ( index <  ( *arraySize )  )   { 
     { 
       ( *temptemp2 )  = reversed [ index ]  ; 
       ; 
     } 
    index++ ; 
   } 
  return 0 ; 
 } 
