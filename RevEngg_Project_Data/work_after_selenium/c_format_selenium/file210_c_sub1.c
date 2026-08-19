#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int temp ; 
  int min_index ; 
  int j ; 
  int i ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   } 
  for  ( i = 0 ;  i <  ( *size )  - 1 ;  i++ )   { 
    min_index = i ; 
    for  ( j = i + 1 ;  j <  ( *size )  ;  j++ )   { 
      if  ( arr [ j ]  < arr [ min_index ]  )   { 
        min_index = j ; 
       } 
     } 
    if  ( min_index != i )   { 
      temp = arr [ i ]  ; 
      arr [ i ]  = arr [ min_index ]  ; 
      arr [ min_index ]  = temp ; 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = arr [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
