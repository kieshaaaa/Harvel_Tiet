#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int min ; 
  int max ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
    if  ( i == 0 )   { 
      max = min = arr [ 0 ]  ; 
     }  else  { 
      if  ( arr [ i ]  > max )  max = arr [ i ]  ; 
      if  ( arr [ i ]  < min )  min = arr [ i ]  ; 
     } 
   } 
   { 
     ( *temptemp2 )  = max ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = min ; 
     ; 
   } 
  return 0 ; 
 } 
