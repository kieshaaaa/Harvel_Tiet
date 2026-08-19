#include <stdio.h>

int entry_point ( int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int i ; 
   ; 
  for  ( i = 0 ;  i < 10 ;  i++ )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
    arr [ i ]  = arr [ i ]  % 2 ; 
   }  ; 
  for  ( i = 0 ;  i < 10 ;  i++ )   { 
     { 
       ( *temptemp2 )  = i ; 
       ( *temptemp3 )  = arr [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
