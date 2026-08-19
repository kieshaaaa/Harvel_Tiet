#include <stdio.h>

int entry_point ( int ( *degree )  ,  float ( *coeff )  ,  float ( *x )  ,  int ( *temptemp1 )  , 
                float ( *temptemp2 )  )   { 
  float sum = 0 ; 
  int i ; 
   ; 
   ; 
  i =  ( *degree )  ; 
  while  ( i >= 0 )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
    i-- ; 
   }  ; 
  i =  ( *degree )  ; 
  while  ( i > 0 )   { 
    sum =  ( sum + coeff [ i ]  )  *  ( *x )  ; 
    i-- ; 
   } 
  sum = sum + coeff [ 0 ]  ; 
   { 
     ( *temptemp2 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
