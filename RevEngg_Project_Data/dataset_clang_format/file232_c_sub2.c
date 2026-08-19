#include <stdio.h>

int entry_point ( int ( *total )  ,  int ( *elements )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
  int i ; 
  int swap ; 
   ; 
  for  ( i = 0 ;  i <  ( *total )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   } 
  for  ( i = 1 ;  i <  ( *total )  ;  i++ )   { 
    for  ( j = i ;  j > 0 && elements [ j - 1 ]  > elements [ j ]  ;  j-- )   { 
      swap = elements [ j ]  ; 
      elements [ j ]  = elements [ j - 1 ]  ; 
      elements [ j - 1 ]  = swap ; 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *total )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = elements [ i ]  ; 
       ; 
     } 
   }  ; 
  return 0 ; 
 } 
