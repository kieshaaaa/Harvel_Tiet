#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int needToSort ; 
  int temp ; 
  int i ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   } 
  do  { 
    needToSort = 0 ; 
    for  ( i = 0 ;  i <  ( *size )  - 1 ;  i++ )   { 
      if  ( arr [ i ]  < arr [ i + 1 ]  )   { 
        temp = arr [ i ]  ; 
        arr [ i ]  = arr [ i + 1 ]  ; 
        arr [ i + 1 ]  = temp ; 
        needToSort = 1 ; 
       } 
     } 
   }  while  ( needToSort )  ; 
   ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = arr [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
