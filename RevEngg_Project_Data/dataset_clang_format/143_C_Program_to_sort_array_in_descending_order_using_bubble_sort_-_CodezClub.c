#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *array )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int temp ; 
  int j ; 
  int i ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ; 
   } 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = i + 1 ; 
       ; 
     } 
   } 
  for  ( i = 0 ;  i <  (  ( *n )  - 1 )  ;  i++ )   { 
    for  ( j = 0 ;  j <  ( *n )  - i - 1 ;  j++ )   { 
      if  ( array [ j ]  < array [ j + 1 ]  )   { 
        temp = array [ j ]  ; 
        array [ j ]  = array [ j + 1 ]  ; 
        array [ j + 1 ]  = temp ; 
       } 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     ( *temptemp3 )  = array [ i ]  ; 
     ; 
   } 
  return 0 ; 
 } 
