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
  for  ( i = 1 ;  i <  ( *N )  ;  i++ )   { 
    Temp = A [ i ]  ; 
    j = i - 1 ; 
    while  ( Temp < A [ j ]  && j > 0 )   { 
      A [ j + 1 ]  = A [ j ]  ; 
      j = j - 1 ; 
     } 
    A [ j + 1 ]  = Temp ; 
   }  ; 
  for  ( i = 1 ;  i <=  ( *N )  ;  i++ )   { 
     ( *temptemp2 )  = A [ i ]  ; 
     ; 
   }  ; 
  return 0 ; 
 } 
