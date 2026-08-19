#include <stdio.h>

void entry_point ( int ( *num )  ,  int ( *arr )  ,  int ( *temptemp1 )  )   { 
  int temp ; 
  int j ; 
   ; 
   ; 
  for  ( j = 0 ;  j <  ( *num )  ;  j++ )  j = 0 ; 
  int idx = 0 ; 
  while  ( idx <  ( *num )  )   { 
    if  ( idx == 0 || arr [ idx - 1 ]  <= arr [ idx ]  ) 
      idx++ ; 
    else  { 
      temp = arr [ idx - 1 ]  ; 
      arr [ idx - 1 ]  = arr [ idx ]  ; 
      arr [ idx ]  = temp ; 
      idx = idx - 1 ; 
     } 
   } 
  for  ( j = 0 ;  j <  ( *num )  ;  j++ )   { 
     ( *temptemp1 )  = arr [ j ]  ; 
     ; 
   } 
 } 
