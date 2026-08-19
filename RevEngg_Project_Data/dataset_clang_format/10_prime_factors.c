#include <stdio.h>

void primeFactors ( int )  ; 
int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   } 
  for  ( i = 2 ;  i <=  ( *num )  ;  i++ )   { 
    while  (  ( *num )  % i == 0 )   { 
       { 
         ( *temptemp2 )  = i ; 
         ; 
       } 
       ( *num )  /= i ; 
     } 
   } 
  return 0 ; 
 } 
