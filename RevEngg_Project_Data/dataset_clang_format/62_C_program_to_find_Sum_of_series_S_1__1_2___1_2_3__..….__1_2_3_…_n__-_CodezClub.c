#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
  int i ; 
  int sum1 = 0 ; 
  int sum ; 
   ; 
  for  ( i = 1 ;  i <=  ( *n )  ;  i++ )   { 
    sum = 0 ; 
    for  ( j = 1 ;  j <= i ;  j++ )   { 
      sum = sum + j ; 
     } 
    sum1 = sum1 + sum ; 
   } 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = sum1 ; 
     ; 
   } 
  return 0 ; 
 } 
