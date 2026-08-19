#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j = 1 ; 
  int i = 0 ; 
  int low ; 
   ; 
  for  ( i = 0 ;  i < 10 ;  i++ ,  j++ )   { 
     { 
       ( *temptemp1 )  = j ; 
       ; 
     } 
   } 
  low = num [ 0 ]  ; 
  i = 0 ,  j = 1 ; 
  for  (  ;  i < 9 ;  i++ )   { 
    if  ( low > num [ i + 1 ]  )   { 
      low = num [ i + 1 ]  ; 
     } 
   } 
   { 
     ( *temptemp2 )  = low ; 
     ; 
   } 
  return 0 ; 
 } 
