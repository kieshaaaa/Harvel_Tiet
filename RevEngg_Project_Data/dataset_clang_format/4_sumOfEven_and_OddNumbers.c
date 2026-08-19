#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int array [ 10 ]  =  { 1 ,  2 ,  3 ,  4 ,  5 ,  6 ,  7 ,  8 ,  9 ,  10 }  ; 
  int i ; 
  int odd_sum = 0 ; 
  int even_sum = 0 ; 
  for  ( i = 0 ;  i < 10 ;  i++ )   { 
    if  ( array [ i ]  % 2 == 0 ) 
      even_sum += array [ i ]  ; 
    else
      odd_sum += array [ i ]  ; 
   } 
   { 
     ( *temptemp1 )  = even_sum ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = odd_sum ; 
     ; 
   } 
  return 0 ; 
 } 
