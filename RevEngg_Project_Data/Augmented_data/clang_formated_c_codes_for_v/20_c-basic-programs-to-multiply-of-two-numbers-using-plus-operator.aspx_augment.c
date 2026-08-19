#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int counter ; 
  int product ; 
   ; 
   ; 
  product = 0 ; 
  counter = 1 ; 
  while  ( counter <=  ( *num2 )  )   { 
    product +=  ( *num1 )  ; 
    counter++ ; 
   } 
   { 
     ( *temptemp1 )  =  ( *num1 )  ; 
     ( *temptemp2 )  =  ( *num2 )  ; 
     ( *temptemp3 )  = product ; 
     ; 
   } 
  return 0 ; 
 } 
