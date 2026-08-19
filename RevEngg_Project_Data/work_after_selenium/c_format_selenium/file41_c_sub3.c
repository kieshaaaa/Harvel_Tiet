#include <stdio.h>

int entry_point ( int ( *arr1 )  ,  int ( *arr2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int arr3 [ 10 ]  ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i < 5 ;  ++i )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   }  ; 
  for  ( i = 0 ;  i < 5 ;  ++i )   { 
     { 
       ( *temptemp2 )  = i + 1 ; 
       ; 
     } 
   } 
  for  ( i = 0 ;  i < 5 ;  ++i )   { 
    arr3 [ i ]  = arr1 [ i ]  ; 
    arr3 [ i + 5 ]  = arr2 [ i ]  ; 
   }  ; 
  for  ( i = 0 ;  i < 10 ;  ++i )   { 
     { 
       ( *temptemp3 )  = i ; 
       ( *temptemp4 )  = arr3 [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
