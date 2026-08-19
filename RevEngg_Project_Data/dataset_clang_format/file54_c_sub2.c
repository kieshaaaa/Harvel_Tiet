#include <stdio.h>

void entry_point ( int ( *num )  ,  int ( *array )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int temp ; 
  int j ; 
  int i ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *num )  ;  i++ )   { 
   }  ; 
  for  ( i = 0 ;  i <  ( *num )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = array [ i ]  ; 
       ; 
     } 
   } 
  for  ( i = 0 ;  i <  ( *num )  ;  i++ )   { 
    for  ( j = 0 ;  j <  ( *num )  - i - 1 ;  j++ )   { 
      if  ( array [ j ]  < array [ j + 1 ]  )   { 
        temp = array [ j ]  ; 
        array [ j ]  = array [ j + 1 ]  ; 
        array [ j + 1 ]  = temp ; 
       } 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *num )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = array [ i ]  ; 
       ; 
     } 
   } 
 } 
