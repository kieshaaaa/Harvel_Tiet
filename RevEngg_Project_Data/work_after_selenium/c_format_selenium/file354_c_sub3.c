#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int checked [ 100 ]  ; 
  int count ; 
  int j ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    checked [ i ]  = 0 ; 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    if  ( checked [ i ]  == 1 )  continue ; 
    count = 1 ; 
    for  ( j = i + 1 ;  j <  ( *size )  ;  j++ )   { 
      if  ( arr [ i ]  == arr [ j ]  )   { 
        count++ ; 
        checked [ j ]  = 1 ; 
       } 
     } 
     { 
       ( *temptemp1 )  = arr [ i ]  ; 
       ( *temptemp2 )  = count ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
