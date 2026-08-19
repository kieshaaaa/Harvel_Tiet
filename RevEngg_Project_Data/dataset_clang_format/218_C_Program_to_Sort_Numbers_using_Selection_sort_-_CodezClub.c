#include <stdio.h>

int entry_point ( int ( *N )  ,  int ( *A )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
  int i ; 
  int Temp ; 
   ; 
   ; 
  for  ( i = 1 ;  i <=  ( *N )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
   } 
  for  ( i = 1 ;  i <=  ( *N )  - 1 ;  i++ ) 
    for  ( j = i + 1 ;  j <=  ( *N )  ;  j++ ) 
      if  ( A [ i ]  > A [ j ]  )   { 
        Temp = A [ i ]  ; 
        A [ i ]  = A [ j ]  ; 
        A [ j ]  = Temp ; 
       }  ; 
  for  ( i = 1 ;  i <=  ( *N )  ;  i++ )   { 
     ( *temptemp2 )  = A [ i ]  ; 
     ; 
   }  ; 
  return 0 ; 
 } 
