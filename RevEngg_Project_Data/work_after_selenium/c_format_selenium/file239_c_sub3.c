#include <stdio.h>

int entry_point ( int ( *N )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int arr [ 100 ]  ,   ( *N )  ; 
  int i = 0 ; 
  int odd = 0 ; 
  int even = 0 ; 
   ; 
  while  ( i <  ( *N )  )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
    arr [ i ]  % 2 ? odd++ : even++ ; 
    i++ ; 
   } 
   { 
     ( *temptemp2 )  = even ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = odd ; 
     ; 
   } 
  return 0 ; 
 } 
