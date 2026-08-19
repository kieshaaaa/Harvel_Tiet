#include <stdio.h>

int entry_point ( int ( *N )  ,  int ( *A )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int flag ; 
  int j ; 
  int i ; 
  int Temp ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *N )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   } 
  for  ( i = 0 ;  i <  ( *N )  - 1 ;  i++ )   { 
    flag = 0 ; 
    for  ( j = i + 1 ;  j <  ( *N )  ;  j++ )   { 
      if  ( A [ j ]  < A [ i ]  )   { 
        Temp = A [ i ]  ; 
        A [ i ]  = A [ j ]  ; 
        A [ j ]  = Temp ; 
        flag = 1 ; 
       } 
     } 
    if  ( !flag )  break ; 
   }  ; 
  for  ( i = 0 ;  i <  ( *N )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = A [ i ]  ; 
       ; 
     } 
   }  ; 
  return 0 ; 
 } 
