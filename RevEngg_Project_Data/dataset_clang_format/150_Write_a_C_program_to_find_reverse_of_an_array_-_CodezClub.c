#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int reverse [ 100 ]  ; 
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
  j = 0 ; 
  for  ( i =  ( *size )  - 1 ;  i >= 0 ;  i-- )   { 
    reverse [ j ]  = arr [ i ]  ; 
    j++ ; 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = reverse [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
