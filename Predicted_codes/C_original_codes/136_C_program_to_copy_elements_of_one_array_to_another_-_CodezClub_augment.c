#include <stdio.h>

int entry_point ( int ( *arraySize )  ,  int ( *arr1 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int arr2 [ 100 ]  ; 
  int j ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *arraySize )  ; 
     ; 
   } 
  j = 0 ; 
  while  ( j <  ( *arraySize )  )   { 
     { 
       ( *temptemp2 )  = j + 1 ; 
       ; 
     } 
    j++ ; 
   } 
  j = 0 ; 
  while  ( j <  ( *arraySize )  )   { 
    arr2 [ j ]  = arr1 [ j ]  ; 
    j++ ; 
   }  ; 
  j = 0 ; 
  while  ( j <  ( *arraySize )  )   { 
     { 
       ( *temptemp3 )  = arr1 [ j ]  ; 
       ; 
     } 
    j++ ; 
   }  ; 
  j = 0 ; 
  while  ( j <  ( *arraySize )  )   { 
     { 
       ( *temptemp4 )  = arr2 [ j ]  ; 
       ; 
     } 
    j++ ; 
   } 
  return 0 ; 
 } 