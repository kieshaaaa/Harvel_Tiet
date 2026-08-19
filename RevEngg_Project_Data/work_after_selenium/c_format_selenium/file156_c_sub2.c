#include <stdio.h>

int entry_point ( int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
  int i ; 
   ; 
  for  ( i = 0 ;  i < 10 ;  ++i )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
   }  ; 
  for  ( i = 0 ;  i < 10 ;  ++i )   { 
     { 
       ( *temptemp2 )  = i ; 
       ( *temptemp3 )  = arr [ i ]  ; 
       ; 
     } 
   } 
  for  ( i = 0 ;  i < 10 ;  ++i )   { 
    arr [ i ]  =  ( arr [ i ]  % 2 )  ? 1 : 0 ; 
   }  ; 
  for  ( i = 0 ;  i < 10 ;  ++i )   { 
     { 
       ( *temptemp4 )  = i ; 
       ( *temptemp5 )  = arr [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
