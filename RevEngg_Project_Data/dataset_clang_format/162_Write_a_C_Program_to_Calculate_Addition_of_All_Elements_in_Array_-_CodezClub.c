#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int sum ; 
  int i ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *num )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   } 
  sum = 0 ; 
  for  ( i = 0 ;  i <  ( *num )  ;  i++ )  sum = sum + arr [ i ]  ; 
   ; 
  for  ( i = 0 ;  i <  ( *num )  ;  i++ )   { 
     ( *temptemp2 )  = i + 1 ; 
     ( *temptemp3 )  = arr [ i ]  ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
