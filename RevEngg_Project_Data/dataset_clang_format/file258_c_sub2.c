#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int count = 0 ; 
  int j ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
   } 
  for  ( i = 0 ;  i <  ( *n )  - 1 ;  i++ )   { 
    for  ( j = i + 1 ;  j <  ( *n )  ;  j++ )   { 
      if  ( arr [ i ]  == arr [ j ]  )   { 
        count++ ; 
        break ; 
       } 
     } 
   } 
   { 
     ( *temptemp2 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
