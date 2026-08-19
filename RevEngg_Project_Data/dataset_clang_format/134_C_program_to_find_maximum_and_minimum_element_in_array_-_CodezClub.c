#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int min ; 
  int max ; 
  int i ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *size )  ; 
     ; 
   } 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = i + 1 ; 
       ; 
     } 
   } 
  max = arr [ 0 ]  ; 
  min = arr [ 0 ]  ; 
  for  ( i = 1 ;  i <  ( *size )  ;  i++ )   { 
    if  ( arr [ i ]  > max )   { 
      max = arr [ i ]  ; 
     } 
    if  ( arr [ i ]  < min )   { 
      min = arr [ i ]  ; 
     } 
   } 
   { 
     ( *temptemp3 )  = max ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = min ; 
     ; 
   } 
  return 0 ; 
 } 
