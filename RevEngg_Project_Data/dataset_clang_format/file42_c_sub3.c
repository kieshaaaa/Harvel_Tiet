#include <stdio.h>

int entry_point ( int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
  int size = 5 ; 
  int key ; 
  int j ; 
  int i ; 
  for  ( i = 0 ;  i < size ;  i++ )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
   }  ; 
  for  ( i = 0 ;  i < size ;  i++ )   { 
     { 
       ( *temptemp2 )  = i ; 
       ( *temptemp3 )  = arr [ i ]  ; 
       ; 
     } 
   } 
  for  ( i = 1 ;  i < size ;  i++ )   { 
    key = arr [ i ]  ; 
    j = i - 1 ; 
    while  ( j >= 0 && arr [ j ]  > key )   { 
      arr [ j + 1 ]  = arr [ j ]  ; 
      j = j - 1 ; 
     } 
    arr [ j + 1 ]  = key ; 
   }  ; 
  for  ( i = 0 ;  i < size ;  i++ )   { 
     { 
       ( *temptemp4 )  = i ; 
       ( *temptemp5 )  = arr [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
